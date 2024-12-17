import 'package:flutter/material.dart';
import 'purchase_button.dart'; // Importar el widget del botón de compra

class DescriptionWidget extends StatelessWidget {
  final double fontSizeTitle;
  final double fontSizeText;

  const DescriptionWidget({
    super.key, // Usar super parámetro aquí
    required this.fontSizeTitle,
    required this.fontSizeText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Kit de Cámaras de Seguridad',
          style:
              TextStyle(fontSize: fontSizeTitle, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Text(
          'Este kit incluye cámaras de alta resolución, sistema de grabación y acceso remoto para una seguridad completa.',
          style: TextStyle(fontSize: fontSizeText),
        ),
        const SizedBox(height: 20),
        const PurchaseButton(), // Usar el nuevo widget
      ],
    );
  }
}
