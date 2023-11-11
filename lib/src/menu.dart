import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Ceutec',
      home: PaginaPrincipal(),
    );
  }
}

class PaginaPrincipal extends StatefulWidget {
  @override
  _PaginaPrincipalState createState() => _PaginaPrincipalState();
}

class _PaginaPrincipalState extends State<PaginaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App CEUTEC'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // Aquí puedes agregar la lógica para manejar el botón de menú.
            print('Botón de menú presionado');
          },
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.newspaper),
            title: Text('Noticias'),
            onTap: () {
              // Agrega la lógica para manejar la selección de la Opción 1.
              print('Opción Noticias seleccionada');
            },
          ),
          ListTile(
            leading: Icon(Icons.attach_money),
            title: Text('El cambio de moneda'),
            onTap: () {
              // Agrega la lógica para manejar la selección de la Opción 2.
              print('Opción El cambio de moneda seleccionada');
            },
          ),
          ListTile(
            leading: Icon(Icons.list),
            title: Text('Lista de tareas'),
            onTap: () {
              // Agrega la lógica para manejar la selección de la Opción 3.
              print('Opción Lista de tareas seleccionada');
            },
          ),
          ListTile(
            leading: Icon(Icons.podcasts),
            title: Text('Podcast'),
            onTap: () {
              // Agrega la lógica para manejar la selección de la Opción 4.
              print('Opción Podcast seleccionada');
            },
          ),
        ],
      ),
    );
  }
}