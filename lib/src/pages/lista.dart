import 'package:flutter/material.dart';

class Lista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Tareas'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: [
          TareaItem(
            title: 'Hacer tarea de matemáticas',
            description: 'Fecha límite: 10 de noviembre',
          ),
          TareaItem(
            title: 'Preparar presentación de historia',
            description: 'Fecha límite: 15 de noviembre',
          ),
        ],
      ),
    );
  }
}

class TareaItem extends StatelessWidget {
  final String title;
  final String description;

  TareaItem({
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(description),
    );
  }
}