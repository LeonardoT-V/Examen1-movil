import 'package:examen_1_parcial/Estudiante.dart';
import 'package:examen_1_parcial/EstudianteDetail.dart';
import 'package:flutter/material.dart';

class ElementEstudiante extends StatelessWidget {
  final Estudiante estudiante;
  final Function onTap;

  const ElementEstudiante(
      {Key? key, required this.estudiante, required this.onTap})
      : super(key: key);

  // Read comments in order 1-2-3 please.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => EstudianteDetail(
                      estudiante: estudiante,
                    )));
      },
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Text(
              estudiante.cedula.toString(),
              style: TextStyle(fontSize: 24, color: Colors.blue.shade400),
            ),
            Text(estudiante.apellido,
                style: TextStyle(fontSize: 24, color: Colors.blue.shade400)),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),
      ),
    );
  }
}
