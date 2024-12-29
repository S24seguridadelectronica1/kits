import 'package:flutter/material.dart';

class SubtituloWidget extends StatelessWidget {
  final String subtituloText;

  const SubtituloWidget({
    super.key,
    required this.subtituloText,
  });

  @override
  Widget build(BuildContext context) {
    // Obtener el ancho de la pantalla
    double screenWidth = MediaQuery.of(context).size.width;

    // Establecer un tamaño de fuente responsivo
    double fontSize = screenWidth > 600
        ? 46
        : 26; // Pantallas más grandes tienen un texto más grande

    // Ajustar el padding del contenedor según el tamaño de la pantalla
    double containerPadding = screenWidth > 600 ? 16.0 : 8.0;

    return Padding(
      padding: const EdgeInsets.only(
          top: 8.0), // Espacio entre el subtítulo y otros elementos
      child: Container(
        width: double.infinity, // Ocupa el ancho máximo posible
        color: Colors.black, // Fondo negro
        padding:
            EdgeInsets.all(containerPadding), // Espaciado interno responsivo
        child: FittedBox(
          // Ajuste responsivo
          fit: BoxFit.scaleDown, // Escalar hacia abajo si es necesario
          child: Text(
            subtituloText,
            style: TextStyle(
              fontSize: fontSize, // Tamaño de fuente responsivo
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
