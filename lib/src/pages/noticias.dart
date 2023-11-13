import 'package:flutter/material.dart';


class Noticias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Noticias'),
        leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
              },
            ),
          ),


      body: Scrollbar(
        
      child: ListView(
        children: [
          NoticiaCard(
            image: 'https://ceutec.hn/wp-content/uploads/2023/10/faculty-awards-04.png',
            title: 'DOCENTES DE UNITEC Y CEUTEC SON RECONOCIDOS EN LA SEGUNDA EDICIÓN DE LOS FACULTY AWARDS',
            description: 'En el marco del Día del Maestro Hondureño, la Universidad Tecnológica Centroamericana (UNITEC) y el Centro Universitario Tecnológico (CEUTEC), celebraron la segunda edición de los Faculty Awards, evento donde reconocieron el compromiso con la formación de profesionales íntegros, a más de 170 docentes de las diferentes carreras universitarias.',
          ),
          NoticiaCard(
            image: 'https://ceutec.hn/wp-content/uploads/2023/10/graduaciones-unitec-ceutec-05.png',
            title: 'UNITEC y CEUTEC celebran el triunfo académico de 863 nuevos profesionales hondureños',
            description: 'La Universidad Tecnológica Centroamericana (UNITEC) y el Centro Universitario Tecnológico (CEUTEC), celebraron con orgullo el triunfo académico de los nuevos graduados de pregrado y posgrado de las diferentes carreras a nivel nacional, profesionales que potenciarán el desarrollo del país.',
          ),
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