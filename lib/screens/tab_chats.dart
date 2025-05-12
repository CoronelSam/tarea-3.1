import 'package:flutter/material.dart';
import 'package:tarea_3/core/text_style.dart';

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
          title: const Text('R2-D2', style: TextStyles.nameText,),
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
          title: const Text('C-3PO', style: TextStyles.nameText,),
          subtitle: Row(
            children: const [
              Icon(Icons.done_all, color: Colors.grey, size: 16),
              SizedBox(width: 4),
              Text('Donde está R2-D2?'),
            ],
          ),
          trailing: const Text('Ayer'),
        ),
        const Divider(),
        const ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.red,
            backgroundImage: AssetImage('assets/images/chewbacca.jpeg'),
          ),
          title: Text('Chewbaca', style: TextStyles.nameText,),
          subtitle: Row(
            children: [
              Icon(Icons.done, color: Colors.grey, size: 16),
              SizedBox(width: 4),
              Text('¿Dónde está Han Solo?'),
            ],
          ),
          trailing: Text('Hace 2 días'),
        ),
        const Divider(),
        const ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.green,
            backgroundImage: AssetImage('assets/images/han_solo.jpeg'),
          ),
          title: Text('Han Solo', style: TextStyles.nameText,),
          subtitle: Row(
            children: [
              Icon(Icons.done, color: Colors.grey, size: 16),
              SizedBox(width: 4),
              Text('¿Dónde está Chewbacca?'),
            ],
          ),
          trailing: Text('Hace 3 días'),
        ),
        const Divider(),
      ],
    );
  }
}