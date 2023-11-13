import 'package:flutter/material.dart';
import 'package:flutter_application_examen1/src/menu.dart';
import 'package:flutter_application_examen1/src/pages/noticias.dart';
import 'package:flutter_application_examen1/src/pages/lista.dart';
import 'package:flutter_application_examen1/src/pages/podcast.dart';
import 'package:flutter_application_examen1/src/pages/cambiomoneda.dart';

Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder>{
    '/home': (context) => HomePages(),
        '/noticias': (context) => Noticias(),
        '/cambioMonedas': (context) => Moneda(),
        '/listaTareas': (context) => Lista(),
        '/podcast': (context) => PodcastScreen(),
  };
}