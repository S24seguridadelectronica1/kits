import 'package:flutter/material.dart';
import 'formulario.dart';

class FormularioBoton extends StatelessWidget {
  const FormularioBoton({super.key}); // Ya está correcto

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const FormularioWidget()),
        );
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        backgroundColor: Colors.blue,
      ),
      child: const Text(
        '',
        style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}
