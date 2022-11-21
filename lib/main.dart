import 'package:examen_1_parcial/ElemetEstudiante.dart';
import 'package:examen_1_parcial/Estudiante.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final estudiantes = [
    Estudiante(cedula: 1315962249, nombre: 'Leonardo', apellido: 'Toro'),
    Estudiante(cedula: 1314926456, nombre: 'Prueba', apellido: 'Numero'),
    Estudiante(cedula: 1314926456, nombre: 'Caracol', apellido: 'Zapato'),
    Estudiante(cedula: 1314926456, nombre: 'Maria', apellido: 'DB'),
  ];

  void doSomething(Estudiante estudiante) {
    // ignore: avoid_print
    print(estudiante.nombre);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Examen 1 Parcial'),
      ),
      body: ListView(
        children: estudiantes
            .map((estudiante) =>
                ElementEstudiante(estudiante: estudiante, onTap: doSomething))
            .toList(),
      ),
    );
  }
}
