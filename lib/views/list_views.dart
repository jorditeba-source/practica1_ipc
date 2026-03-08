import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Segunda Pantalla"),
        backgroundColor: Colors.green,
      ),
      body: const Center(
        child: Text(
          "¡Felicidades, has navegado correctamente!",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}