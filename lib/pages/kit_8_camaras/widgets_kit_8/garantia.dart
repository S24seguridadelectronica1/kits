import 'package:flutter/material.dart';

class Garantia extends StatelessWidget {
  const Garantia({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: double.infinity, // Asegura que ocupe todo el ancho de la pantalla
      margin: EdgeInsets.only(
          top: screenHeight * 0.05), // Solo margen superior responsivo
      decoration: BoxDecoration(
        color: const Color.fromRGBO(
            0, 0, 0, 0.89), // Fondo negro con transparencia
        borderRadius: BorderRadius.circular(4.0), // Bordes redondeados
      ),
      padding: const EdgeInsets.all(16.0), // Margen interno para el texto
      child: Text(
        'Garantía de 1 año para cámaras de seguridad y video grabador (DVR)',
        style: TextStyle(
          fontSize: MediaQuery.of(context).size.width *
              0.06, // Tamaño de fuente dinámico basado en el ancho
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
