import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(color: Colors.blue),
            child: Row(
              children: const [
                CircleAvatar(
                  backgroundImage:
                      NetworkImage('https://picsum.photos/id/237/200/300'),
                  radius: 30,
                ),
                Expanded(
                  child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'test',
                        style: TextStyle(color: Colors.black),
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
