import 'package:flutter/material.dart';
import 'purchase_button.dart'; // Ruta correcta

// Título centralizado
const String descriptionTitle = 'Kit de Cámaras de Seguridad';
const String imagePath =
    'assets/images/1.png'; // Ruta centralizada de la imagen

class DescriptionWidget extends StatelessWidget {
  final double fontSizeTitle;
  final double fontSizeText;

  const DescriptionWidget({
    super.key,
    required this.fontSizeTitle,
    required this.fontSizeText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          descriptionTitle,
          style:
              TextStyle(fontSize: fontSizeTitle, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Text(
          'Este kit incluye cámaras de alta resolución, sistema de grabación y acceso remoto para una seguridad completa.',
          style: TextStyle(fontSize: fontSizeText),
        ),
        const SizedBox(height: 20),
        const PurchaseButton(),
      ],
    );
  }
}
