import 'package:flutter/material.dart';

class Therapist extends StatefulWidget {
  const Therapist({Key? key}) : super(key: key);

  @override
  _TherapistState createState() => _TherapistState();
}

class _TherapistState extends State<Therapist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 172, 98, 209),
        title: const Text("Mrs. Fakename"),
      ),
    );
  }
}
