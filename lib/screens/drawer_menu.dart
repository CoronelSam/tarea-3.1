import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    void mensaje(String message) {
      final snackbar = SnackBar(content: Text(message));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    }

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.green),
            child: Text('Menu Principal'),
          ),
          ListTile(
            title: const Text('Item 1'),
            onTap: () {
              mensaje('Item 1');
            },
          ),
          ListTile(
            title: const Text('Menu 2'),
            onTap: () {
              mensaje('Menu 2');
            },
          ),
        ],
      ),
    );
  }
}