import 'package:flutter/material.dart';

class PagueEnCasa extends StatelessWidget {
  const PagueEnCasa({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      padding: EdgeInsets.all(screenWidth * 0.04), // Ajuste dinámico de padding
      margin: EdgeInsets.only(
          top: screenHeight * 0.05), // Margen superior responsivo
      decoration: BoxDecoration(
        color: Colors.greenAccent, // Color de fondo
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        '¡Pídelo ahora, Págalo en casa!',
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
