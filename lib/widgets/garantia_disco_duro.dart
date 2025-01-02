import 'package:flutter/material.dart';

class GarantiaDiscoDuro extends StatelessWidget {
  const GarantiaDiscoDuro({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      padding: EdgeInsets.all(screenWidth * 0.04), // Ajuste dinámico de padding
      margin: EdgeInsets.only(
          top: screenHeight * 0.05), // Margen superior responsivo
      decoration: BoxDecoration(
        color: const Color.fromRGBO(255, 119, 119, 0.89),
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Text(
        'Garantía Limitada de 3 años para disco duro.',
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
