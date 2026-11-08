import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Botones')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ElevatedButton(
            onPressed: () {},
            child: const Text('ElevatedButton'),
          ),
          const SizedBox(height: 12),
          FilledButton(
            onPressed: () {},
            child: const Text('FilledButton'),
          ),
          const SizedBox(height: 12),
          OutlinedButton(
            onPressed: () {},
            child: const Text('OutlinedButton'),
          ),
          const SizedBox(height: 12),
          TextButton(
            onPressed: () {},
            child: const Text('TextButton'),
          ),
          const SizedBox(height: 12),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite),
            tooltip: 'IconButton',
          ),
          const SizedBox(height: 12),
          DropdownButton<String>(
            value: 'Opción 1',
            isExpanded: true,
            items: const [
              DropdownMenuItem(value: 'Opción 1', child: Text('DropdownButton')),
              DropdownMenuItem(value: 'Opción 2', child: Text('Opción 2')),
            ],
            onChanged: (_) {},
          ),
          const SizedBox(height: 12),
          FloatingActionButton.extended(
            onPressed: () {},
            icon: const Icon(Icons.add),
            label: const Text('FloatingActionButton'),
          ),
        ],
      ),
    );
  }
}
