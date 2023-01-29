import pandas as pd
df = pd.read_csv("chat.csv", delimiter=',')
df.head()
dataset = []

for i in range(35):
    dataset.append((df['questionTitle'][i], df['answerText'][i]))

# dataset = [("Can I change my feeling of being worthless to everyone?", "I first want to let you know that you are not alone in your feelings and there is always someone there to help. You can always change your feelings and change your way of thinking by being open to trying to change. You can always make yourself available to learning new things or volunteering so that you can make a purpose for yourself."), 
#            ("Do I have too many issues for counseling?","I have so many issues to address. I have a history of sexual abuse, Iâ€™m a breast cancer survivor and I am a lifetime insomniac.    I have a long history of depression and Iâ€™m beginning to have anxiety. I have low self esteem but Iâ€™ve been happily married for almost 35 years. I never had counseling about any of this. Do I have too many issues to address in counseling?"),
#           ]


import torch
from transformers import BertTokenizer, BertForQuestionAnswering
from torch.utils.data import DataLoader, TensorDataset
from torch.optim import AdamW
import tensorflow as tf
import numpy as np


# Defining the tokenizer
tokenizer = BertTokenizer.from_pretrained("bert-base-cased")

# Defining the model
model = BertForQuestionAnswering.from_pretrained("bert-base-cased")

# Defining the optimizer
optimizer = AdamW(model.parameters(), lr=2e-5, eps=1e-8)

# Defining the scheduler
scheduler = torch.optim.lr_scheduler.OneCycleLR(optimizer, max_lr=2e-5, total_steps=len(dataset) * 2, epochs=2, 
                                                anneal_strategy='linear', cycle_momentum=False)

# Defining the loss function

loss_fn = torch.nn.CrossEntropyLoss(ignore_index=-1)

def get_start_end_positions(question, answer):
    """
    Function that returns the start and end positions of the answer in the input sequence.
    """
    start = question.find(answer)
    end = start + len(answer)
    return start, end

# Training loop
for epoch in range(10):
    for idx, (question, answer) in enumerate(dataset):
        # Prepare the inputs
        question_inputs = tokenizer.encode_plus(question, return_tensors="pt")
        answer_inputs = tokenizer.encode_plus(answer, return_tensors="pt")
        input_ids = torch.cat((question_inputs["input_ids"], answer_inputs["input_ids"]), dim=1)
        token_type_ids = torch.cat((question_inputs["token_type_ids"], answer_inputs["token_type_ids"]), dim=1)
        
        start_position, end_position = get_start_end_positions(question, answer)
        start_positions = torch.tensor([start_position], dtype=torch.long)
        end_positions = torch.tensor([end_position], dtype=torch.long)

        # Forward pass
        outputs = model(input_ids, token_type_ids=token_type_ids, start_positions=start_positions, end_positions=end_positions)
        loss = outputs[0]

        # Backward pass
        loss.backward()
        optimizer.step()
        scheduler.step()
        optimizer.zero_grad()


# Saving the fine-tuned model
model.save_pretrained("finetuned_model")


# Switch the model to evaluation mode
model = BertForQuestionAnswering.from_pretrained("finetuned_model")

# Tokenize the new question
new_question = "Can I change my feeling of being worthless to everyone?"
new_question_inputs = tokenizer.encode_plus(new_question, return_tensors="pt")

# Make predictions
outputs = model(new_question_inputs["input_ids"], token_type_ids=new_question_inputs["token_type_ids"])
start_scores = outputs[0]
end_scores = outputs[1]

print(start_scores)
print(end_scores)
# Get the most likely beginning of answer with the argmax of the score
answer_start = torch.argmax(start_scores)
# Get the most likely end of answer with the argmax of the score
answer_end = torch.argmax(end_scores) + 1

# Combine the tokens in the answer and print it
answer = tokenizer.convert_tokens_to_string(tokenizer.convert_ids_to_tokens(new_question_inputs["input_ids"][0][answer_start:answer_end]))

print("Answer: {}".format(answer))