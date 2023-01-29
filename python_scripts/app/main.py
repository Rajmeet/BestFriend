import os

from flask import Flask, request, jsonify
from flask_cors import CORS

import nltk
from nltk.sentiment import SentimentIntensityAnalyzer
nltk.download('vader_lexicon')


app = Flask(__name__)
CORS(app)

import openai


openai.api_key = "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"



@app.route("/")
def hello_world():
    name = os.environ.get("NAME", "World")
    return "Hello {}!".format(name)

@app.route("/help/", methods=['POST', "DELETE", "GET"])
def hello_world2():
    # if key doesn't exist, returns None
    prompt = request.args.get('input')
    main_prompt = request.args.get('main_prompt')

    # main_prompt = """This is a conversation with a sucide helpline operator."""
    main_prompt += f"\nYou: {prompt} + \nOperator:"

    completions = openai.Completion.create(
        model="text-davinci-003",
        prompt=main_prompt,
        temperature=0.9,
        max_tokens=150,
        top_p=1,
        frequency_penalty=0.0,
        presence_penalty=0.6,
        stop=[" You:", " Operator:"]
    )

    if len(completions.choices) == 0:
        return "Operator: I'm sorry, I don't understand.", 400

    response = completions.choices[0].text
    return response 
    # data = {
    #         "response" : response,
    #         "main_prompt" : main_prompt,
    # }

    # return jsonify(data)

@app.route("/check/", methods=['POST', "DELETE", "GET"])
def hello_world3():    
    text = request.args.get('checkmsg')
    
    sid = SentimentIntensityAnalyzer()
    sentiment = sid.polarity_scores(text)
    
    if sentiment['compound'] <= -0.035:
        return "TRUE"
    else:
        return "FALSE"
    

if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0", port=int(os.environ.get("PORT", 8080)))