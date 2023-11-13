import 'package:flutter/material.dart';
import 'package:flutter_application_examen1/src/rutas/rutas.dart';

void main() => runApp(const MainApp());


class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: getRoutes(),
      initialRoute: '/home',
    );
  }
}