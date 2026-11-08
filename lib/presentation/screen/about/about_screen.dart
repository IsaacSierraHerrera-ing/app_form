import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Acerca de')),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: const [
          CircleAvatar(
            radius: 48,
            child: Icon(Icons.person, size: 56),
          ),
          SizedBox(height: 24),
          Center(
            child: Text(
              'Información personal',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 24),
          ListTile(
            leading: Icon(Icons.badge),
            title: Text('Nombre'),
            subtitle: Text('Escribe aquí tu nombre'),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Correo electrónico'),
            subtitle: Text('Escribe aquí tu correo'),
          ),
          ListTile(
            leading: Icon(Icons.school),
            title: Text('Descripción'),
            subtitle: Text('Estudiante de desarrollo de aplicaciones'),
          ),
        ],
      ),
    );
  }
}
