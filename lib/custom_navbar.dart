import 'package:best_friend/call_screen.dart';
import 'package:best_friend/chat_screen.dart';
import 'package:best_friend/home_screen.dart';
import 'package:best_friend/resources.dart';
import 'package:flutter/material.dart';

class CustomNavBar extends StatefulWidget {
  int _id = 0;
  CustomNavBar(
    this._id, {
    super.key,
  });

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  @override
  Widget build(BuildContext context) {
    final List _pages = [
      const HomeScreen(),
      const ResourceScreen(),
      const CallScreen(),
      const ChatScreen()
    ];

    return BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Resource'),
          BottomNavigationBarItem(icon: Icon(Icons.phone), label: 'Hotline'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Chat'),
        ],
        currentIndex: widget._id,
        unselectedItemColor: Colors.blue,
        selectedItemColor: Colors.purple,
        onTap: (int index) => {
              if (widget._id != index)
                {
                  setState(() {
                    if (widget._id != 0) {
                      Navigator.of(context).pop();
                    }
                    if (index != 0) {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => _pages[index],
                        ),
                      );
                    }
                  }),
                }
            });
  }
}
