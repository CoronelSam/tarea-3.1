import 'package:flutter/material.dart';
import 'package:tarea_3/core/text_style.dart';
import 'package:tarea_3/screens/drawer_menu.dart';
import 'package:tarea_3/screens/tab_chats.dart';
import 'package:tarea_3/screens/tab_status.dart';
import 'package:tarea_3/screens/tab_calls.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool buscando = false;

  void _mensaje(String message) {
    final snackbar = SnackBar(
      content: Text(message),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {},
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        drawer: const DrawerMenu(),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 22, 163, 27),
          iconTheme: const IconThemeData(color: Colors.white),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                setState(() {
                  buscando = !buscando;
                });
              },
            ),
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {
                _mensaje('More');
              },
            ),
          ],
          title: buscando
              ? const TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: 'Buscar...',
                    border: InputBorder.none,
                  ),
                )
              : const Text('WhatsApp', style: TextStyles.titleText),
          bottom: const TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white70,
            indicatorColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.camera_alt, color: Colors.white)),
              Tab(text: 'CHATS'),
              Tab(text: 'STATUS'),
              Tab(text: 'CALLS'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Icon(Icons.camera_alt),
            TabChats(),
            TabStatus(),
            TabCalls(),
          ],
        ),
      ),
    );
  }
}