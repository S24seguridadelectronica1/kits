import 'package:flutter/material.dart';

class PagueEnCasa extends StatelessWidget {
  const PagueEnCasa({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth *
          1.5, // Aumentar el ancho al 150% del ancho de la pantalla
      padding: EdgeInsets.all(screenWidth * 0.04), // Ajuste dinámico de padding
      margin:
          EdgeInsets.zero, // Eliminar cualquier margen para ajustarse al borde
      decoration: BoxDecoration(
        color: const Color.fromRGBO(0, 0, 0, 0.89),
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Text(
        'Paga en casa al recibir el producto.',
        style: TextStyle(
          fontSize: screenWidth *
              0.05, // Tamaño de fuente dinámico basado en el ancho
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
