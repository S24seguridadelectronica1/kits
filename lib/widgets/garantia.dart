import 'package:flutter/material.dart';

class Garantia extends StatelessWidget {
  const Garantia({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context)
          .size
          .width, // Usar el ancho completo de la pantalla
      margin: EdgeInsets.zero, // Asegurarse de que no haya margen
      decoration: BoxDecoration(
        color: const Color.fromRGBO(255, 119, 119, 0.89),
        borderRadius: BorderRadius
            .zero, // Quitar bordes redondeados para que se vea como el AppBar
      ),
      padding: const EdgeInsets.all(8.0), // Reducido a 8.0
      child: Text(
        'Garantía de 1 año para cámaras de seguridad y video grabador (DVR)',
        style: TextStyle(
          fontSize: MediaQuery.of(context).size.width *
              0.05, // Ajustado para mejor escala
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
