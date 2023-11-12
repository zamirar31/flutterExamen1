import 'package:flutter/material.dart';
import 'package:flutter_application_examen1/src/pages/noticias.dart';
import 'package:flutter_application_examen1/src/pages/lista.dart';
import 'package:flutter_application_examen1/src/pages/cambiomoneda.dart';
import 'package:flutter_application_examen1/src/pages/podcast.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Menu()
    );
    
  }
}

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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Noticias()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.attach_money),
            title: Text('El cambio de moneda'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CambioMonedas()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.list),
            title: Text('Lista de tareas'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Lista()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.podcasts),
            title: Text('Podcast'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PodcastPlayerWidget()),
              );
            },
          ),
        ],
      ),
    );
  }
}