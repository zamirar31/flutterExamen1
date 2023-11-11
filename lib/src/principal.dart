import 'package:flutter/material.dart';
import 'package:flutter_application_examen1/src/menu.dart';


class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Menu()
    );
    
  }
}