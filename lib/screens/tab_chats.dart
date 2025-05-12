import 'package:flutter/material.dart';

class TabChats extends StatelessWidget {
  const TabChats({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.blue,
            backgroundImage: const AssetImage('assets/images/r2-d2.jpeg'),
          ),
          title: const Text('R2-D2'),
          subtitle: Row(
            children: const [
              Icon(Icons.done_all, color: Colors.blue, size: 16),
              SizedBox(width: 4),
              Text('Hola, ¿cómo estás?'),
            ],
          ),
          trailing: const Text('Hoy'),
        ),
        Divider(),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.orange,
            backgroundImage: const AssetImage('assets/images/c3po.jpg'),
          ),
          title: const Text('C-3PO'),
          subtitle: Row(
            children: const [
              Icon(Icons.done_all, color: Colors.grey, size: 16),
              SizedBox(width: 4),
              Text('Donde está R2-D2?'),
            ],
          ),
          trailing: const Text('Ayer'),
        ),
      ],
    );
  }
}