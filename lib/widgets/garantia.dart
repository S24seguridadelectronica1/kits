import 'package:flutter/material.dart';

class Garantia extends StatelessWidget {
  final String message; // Mensaje de la garantía
  final Color backgroundColor; // Color de fondo

  const Garantia({
    super.key,
    required this.message,
    this.backgroundColor = const Color.fromRGBO(255, 119, 119, 0.89), // Color predeterminado
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width, // Usar el ancho completo de la pantalla
      margin: EdgeInsets.zero, // Asegurarse de que no haya margen
      decoration: BoxDecoration(
        color: backgroundColor, // Usar color proporcionado
        borderRadius: BorderRadius.zero, // Quitar bordes redondeados para que se vea como el AppBar
      ),
      padding: const EdgeInsets.all(8.0), // Reducido a 8.0
      child: Text(
        message, // Mostrar el mensaje de garantía
        style: TextStyle(
          fontSize: MediaQuery.of(context).size.width * 0.05, // Ajustado para mejor escala
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
