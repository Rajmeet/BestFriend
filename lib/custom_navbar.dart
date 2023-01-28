import 'package:best_friend/call_screen.dart';
import 'package:best_friend/chat_screen.dart';
import 'package:best_friend/home_screen.dart';
import 'package:best_friend/resources.dart';
import 'package:flutter/material.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({
    super.key,
  });

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    final List _pages = [
      const HomeScreen(),
      const ResourceScreen(),
      const ChatScreen(),
      const CallScreen()
    ];

    return BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Resource'),
          BottomNavigationBarItem(icon: Icon(Icons.phone), label: 'Hotline'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Chat'),
        ],
        unselectedItemColor: Colors.blue,
        selectedItemColor: Colors.purple,
        onTap: (index) => {
              if (_selectedIndex != index)
                {
                  setState(() {
                    _selectedIndex = index;
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
