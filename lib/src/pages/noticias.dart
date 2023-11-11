import 'package:flutter/material.dart';
//import 'package:flutter_application_examen1/src/menu.dart';
//import 'package:flutter_application_examen1/src/menu.dart';

class Noticias extends StatelessWidget {
  //const Noticias({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        
        title: Text('Noticias'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
           //Navigator.popUntil(context, ModalRoute.withName());
          //print('Botón de retroceso presionado');
          //Navigator.pop(context);
          
          },
        ),
        
      ),
      body: Scrollbar(
        
      child: ListView(
        children: [
          NoticiaCard(
            image: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fceutec.hn%2Fblog%2F&psig=AOvVaw01GZAnLcYRLWIu-ZDOZkBB&ust=1699823906530000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCICcwdPvvIIDFQAAAAAdAAAAABAJ',
            title: 'DOCENTES DE UNITEC Y CEUTEC SON RECONOCIDOS EN LA SEGUNDA EDICIÓN DE LOS FACULTY AWARDS',
            description: 'En el marco del Día del Maestro Hondureño, la Universidad Tecnológica Centroamericana (UNITEC) y el Centro Universitario Tecnológico (CEUTEC), celebraron la segunda edición de los Faculty Awards, evento donde reconocieron el compromiso con la formación de profesionales íntegros, a más de 170 docentes de las diferentes carreras universitarias.',
          ),
          NoticiaCard(
            image: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fceutec.hn%2Funitec-y-ceutec-celebran-el-triunfo-academico-de-863-nuevos-profesionales-hondurenos%2F&psig=AOvVaw01GZAnLcYRLWIu-ZDOZkBB&ust=1699823906530000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCICcwdPvvIIDFQAAAAAdAAAAABAS',
            title: 'UNITEC y CEUTEC celebran el triunfo académico de 863 nuevos profesionales hondureños',
            description: 'La Universidad Tecnológica Centroamericana (UNITEC) y el Centro Universitario Tecnológico (CEUTEC), celebraron con orgullo el triunfo académico de los nuevos graduados de pregrado y posgrado de las diferentes carreras a nivel nacional, profesionales que potenciarán el desarrollo del país.',
          ),
          // Agrega más noticias según sea necesario
        ],
      ),
      ),   
    );
  }
}

class NoticiaCard extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  NoticiaCard({
    required this.image,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            image,
            height: 200.0,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(description),
              ],
            ),
          ),
        ],
      ),
    );
  }
}