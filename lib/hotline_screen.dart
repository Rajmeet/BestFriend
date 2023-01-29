import 'dart:convert';
import 'dart:math';

import 'package:best_friend/gcp_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';

import 'custom_navbar.dart';

class HotlineScreen extends StatefulWidget {
  const HotlineScreen({Key? key}) : super(key: key);

  @override
  _HotlineScreenState createState() => _HotlineScreenState();
}

// class BottomSheetApp extends StatelessWidget {
//   const BottomSheetApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         colorSchemeSeed: const Color(0xff6750a4),
//         useMaterial3: true,
//       ),
//       home: Scaffold(
//         appBar: AppBar(title: const Text('Bottom Sheet Sample')),
//         body: const BottomSheetExample(),
//       ),
//     );
//   }
// }

class _HotlineScreenState extends State<HotlineScreen> {
  final List<types.Message> _messages = [];
  final _user = const types.User(id: '82091008-a484-4a89-ae75-a22bf8d6f3ac');
  final _user2 = const types.User(id: '420-69-420-69');
  int sucideWordCount = 0;

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
        title: Text("Hotline"),
      ),
      body: sucideWordCount >= 2
          // show alert dialog
          ? AlertDialog(
              title: const Text("Sucide Helpline"),
              content: const Text(
                  "I have noticed that you have been saying some things that are quite serious. I would reccomend calling '988' for better help."),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child:
                      const Text("OK", style: TextStyle(color: Colors.black)),
                ),
              ],
            )
          : Chat(
              messages: _messages,
              onSendPressed: _handleSendPressed,
              user: _user,
            ),
      bottomNavigationBar: CustomNavBar(1),
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
      fetchCheckThots(textMessage.text).then((value) {
        if (mounted) {
          setState(() {
            if (value[1] == "TRUE") {
              sucideWordCount++;
            }
          });
        }
      });
      _addMessage(textMessage);
      fetchData(textMessage.text,
              "This is a conversation with a sucide helpline operator.")
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

Future<void> temp(BuildContext context) {
  return showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context) {
      return SizedBox(
        height: 200,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Text('Call 988'),
              ElevatedButton(
                child: const Text('Close'),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
      );
    },
  );
}
