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
      const ResourceScreen(),
      const CallScreen(),
      const ChatScreen(),
      const HomeScreen(),
    ];

    return BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Resource'),
          BottomNavigationBarItem(icon: Icon(Icons.phone), label: 'Hotline'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Chat'),
        ],
        currentIndex: widget._id < 3 ? widget._id : 0,
        unselectedItemColor: const Color.fromARGB(255, 77, 190, 90),
        selectedItemColor: widget._id < 3
            ? const Color.fromARGB(255, 19, 66, 25)
            : const Color.fromARGB(255, 77, 190, 90),
        onTap: (int index) => {
              if (widget._id != index)
                {
                  setState(() {
                    if (widget._id != 3) {
                      Navigator.of(context).pop();
                    }
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => _pages[index],
                      ),
                    );
                  }),
                }
            });
  }
}
