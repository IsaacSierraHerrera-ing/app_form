import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tarjetas')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            child: ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Card con ListTile'),
              subtitle: const Text('Una tarjeta para mostrar información.'),
            ),
          ),
          Card(
            color: Theme.of(context).colorScheme.primaryContainer,
            child: const Padding(
              padding: EdgeInsets.all(20),
              child: Text('Card con color personalizado'),
            ),
          ),
          Card.outlined(
            child: const Padding(
              padding: EdgeInsets.all(20),
              child: Text('Card.outlined'),
            ),
          ),
          Card(
            elevation: 8,
            child: const Padding(
              padding: EdgeInsets.all(20),
              child: Text('Card con elevación'),
            ),
          ),
        ],
      ),
    );
  }
}
