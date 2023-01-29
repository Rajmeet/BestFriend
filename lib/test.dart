import 'package:best_friend/gcp_service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TestPython extends StatefulWidget {
  const TestPython({super.key});

  @override
  State<TestPython> createState() => _TestPythonState();
}

class _TestPythonState extends State<TestPython> {
  String _result = "";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData("hi", "This is a conversation with a sucide helpline operator.")
        .then((value) {
      if (mounted) {
        setState(() {
          _result = value[1];
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return _result != ""
        ? Container(
            child: Text(_result),
          )
        : CircularProgressIndicator();
  }
}
