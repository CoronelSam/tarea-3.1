import 'package:flutter/material.dart';
import 'package:tarea_3/core/text_style.dart';

class TabStatus extends StatelessWidget {
  const TabStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Stack(
            children: [
              const CircleAvatar(
                child: Icon(Icons.person, color: Colors.white),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 22, 163, 27),
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  child: const Icon(Icons.add, size: 16, color: Colors.white),
                ),
              ),
            ],
          ),
          title: const Text('Mi estado'),
          subtitle: const Text('Toca para agregar un estado'),
        ),
        const Divider(),
        const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text('Estados Vistos', style: TextStyles.bodyText),
        ),
        const ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.blue,
            backgroundImage: AssetImage('assets/images/r2-d2.jpeg'),
          ),
          title: Text('R2-D2'),
          subtitle: Text('Hace 2 horas'),
        ),
        const Divider(),
        const ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.orange,
            backgroundImage: AssetImage('assets/images/c3po.jpg'),
          ),
          title: Text('C-3PO'),
          subtitle: Text('Hace 5 horas'),
        ),
        const ExpansionTile(
          title: Text('Estados Silenciados'),
          children: [
            ListTile(
              leading: CircleAvatar(
              backgroundColor: Colors.red,
              backgroundImage: AssetImage('assets/images/chewbacca.jpeg'),
              ),
              title: Text('Chewbacca'),
              subtitle: Text('Hace 66 horas'),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
              backgroundColor: Colors.green,
              backgroundImage: AssetImage('assets/images/han_solo.jpeg'),
              ),
              title: Text('Han Solo'),
              subtitle: Text('Hace 10 horas'),
            ),
          ],
        ),
      ],
    );
  }
}