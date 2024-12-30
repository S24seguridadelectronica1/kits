import 'package:flutter/material.dart';

class TituloWidget extends StatelessWidget {
  final String tituloText;

  const TituloWidget({super.key, required this.tituloText});

  @override
  Widget build(BuildContext context) {
    // Obtener el ancho de la pantalla
    double screenWidth = MediaQuery.of(context).size.width;

    // Establecer un tamaño de fuente responsivo
    double fontSize = screenWidth > 600
        ? 47
        : 80; // Pantallas más grandes tienen un texto más pequeñas

    // Ajustar el padding del contenedor según el tamaño de la pantalla
    double containerPadding = screenWidth > 600 ? 1.0 : 8.0;

    return Padding(
      padding: EdgeInsets.all(containerPadding), // Padding ajustado
      child: Container(
        width: double.infinity, // Ocupa el ancho máximo posible
        color: Colors.transparent, // Fondo transparente
        child: FittedBox(
          // Ajuste responsivo
          fit: BoxFit.scaleDown, // Escalar hacia abajo si es necesario
          child: Text(
            tituloText,
            style: TextStyle(
              fontSize: fontSize, // Tamaño de fuente responsivo
              fontWeight: FontWeight.bold,
              color: Colors.white, // Texto en blanco para contraste
            ),
            textAlign:
                TextAlign.center, // Centra el texto dentro del contenedor
          ),
        ),
      ),
    );
  }
}
