import 'dart:convert';
import 'dart:math';

import 'package:best_friend/gcp_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';

import 'custom_navbar.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<types.Message> _messages = [];
  final _user = const types.User(id: '82091008-a484-4a89-ae75-a22bf8d6f3ac');
  final _user2 = const types.User(id: '420-69-420-69');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: const Color.fromARGB(255, 172, 98, 209),
        title: Text("Chat"),
      ),
      body: Chat(
        messages: _messages,
        onSendPressed: _handleSendPressed,
        user: _user,
      ),
      bottomNavigationBar: CustomNavBar(2),
    );
  }

  void _addMessage(types.Message message) {
    setState(() {
      _messages.insert(0, message);
    });
  }

  void _handleSendPressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: randomString(),
      text: message.text,
    );
    setState(() {
      _addMessage(textMessage);
      fetchData(textMessage.text,
              "This is a conversation with a kind therapist.")
          .then((value) {
        if (mounted) {
          setState(() {
            _generateRandomResponse(value[1]);
          });
        }
      });
    });
  }

  void _generateRandomResponse(response) {
    final randMessage = types.TextMessage(
      author: _user2,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: randomString(),
      text: response,
    );

    _addMessage(randMessage);
  }
}

// For the testing purposes, you should probably use https://pub.dev/packages/uuid.
String randomString() {
  final random = Random.secure();
  final values = List<int>.generate(16, (i) => random.nextInt(255));
  return base64UrlEncode(values);
}
