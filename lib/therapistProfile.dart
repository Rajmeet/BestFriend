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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 172, 98, 209),
        title: const Text("Mrs. Noname"),
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            child: Image.asset(
              "assets/therapist1.png",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: const [
                Text(
                  "Mrs. Noname",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "She is a qualified therapist with years of experience in helping people overcome their emotional struggles. She has a warm and compassionate approach and believes in empowering her clients to find their own solutions. Her specialties include anxiety, depression, relationship issues, and stress management.",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
