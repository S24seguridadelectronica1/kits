import 'package:flutter/material.dart';
import 'purchase_button.dart'; // Ruta correcta

// Título e imagen centralizados
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
    // Obtiene el ancho de la pantalla para responsividad
    final double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: screenWidth > 800
          ? CrossAxisAlignment.center // Centrado en pantallas grandes
          : CrossAxisAlignment
              .start, // Alineado a la izquierda en pantallas pequeñas
      children: [
        Text(
          descriptionTitle,
          textAlign: screenWidth > 800 ? TextAlign.center : TextAlign.start,
          style: TextStyle(
            fontSize: fontSizeTitle,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'Este kit incluye cámaras de alta resolución, sistema de grabación y acceso remoto para una seguridad completa.',
          textAlign: screenWidth > 800 ? TextAlign.center : TextAlign.start,
          style: TextStyle(fontSize: fontSizeText),
        ),
        const SizedBox(height: 20),
        const PurchaseButton(),
      ],
    );
  }
}
