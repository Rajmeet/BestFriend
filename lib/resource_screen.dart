import 'package:best_friend/therapistProfile.dart';
import 'package:flutter/material.dart';

import 'about.dart';
import 'tos.dart';
import 'therapistProfile.dart';
import 'custom_navbar.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ResourceScreen extends StatefulWidget {
  const ResourceScreen({Key? key}) : super(key: key);

  @override
  _ResourceScreenState createState() => _ResourceScreenState();
}

class _ResourceScreenState extends State<ResourceScreen> {
  void _openTherapistDetails(int index) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => const Therapist(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ...
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: const FlutterLogo(size: 72.0),
                title: Padding(
                  padding: const EdgeInsets.fromLTRB(3, 10, 5, 10),
                  child: GestureDetector(
                    onTap: () => _openTherapistDetails(index),
                    child: Text(
                      "Therapist " + (index + 1).toString(),
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                subtitle: RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ),
            );
          }),
      bottomNavigationBar: CustomNavBar(0),
    );
  }
}
