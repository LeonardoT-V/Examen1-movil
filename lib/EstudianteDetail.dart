import 'package:examen_1_parcial/Estudiante.dart';
import 'package:flutter/material.dart';

class EstudianteDetail extends StatelessWidget {
  final Estudiante estudiante;
  EstudianteDetail({required this.estudiante});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            '${estudiante.nombre} ${estudiante.apellido}',
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Text('Cedula identidad: ${estudiante.cedula}',
                  style: TextStyle(color: Colors.blue.shade400, fontSize: 32)),
              Text(
                'Nombre: ${estudiante.nombre}',
                style: TextStyle(color: Colors.black54, fontSize: 20),
              ),
              Text('Apellido: ${estudiante.apellido}',
                  style: TextStyle(color: Colors.black54, fontSize: 20)),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Atras',
                    style: TextStyle(fontSize: 20),
                  ))
            ],
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          ),
        ));
  }
}
