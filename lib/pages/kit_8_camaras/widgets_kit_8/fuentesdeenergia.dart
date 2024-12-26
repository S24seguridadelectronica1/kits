import 'package:flutter/material.dart';

class FuentesDeEnergia extends StatelessWidget {
  const FuentesDeEnergia({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(16.0), // Espaciado general
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            // Diseño para pantallas grandes
            return Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Imagen a la izquierda
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/21.webp', // Reemplaza con tu ruta de imagen
                    width: screenWidth * 0.4, // Tamaño dinámico
                    height: screenWidth * 0.3, // Tamaño dinámico
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 16), // Espacio entre imagen y texto
                // Texto descriptivo a la derecha
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Accesorios del Kit',
                        style: TextStyle(
                          fontSize: screenWidth * 0.05, // Tamaño dinámico
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Los accesorios del kit incluyen cables, conectores, soportes y más, '
                        'diseñados para garantizar una instalación completa y funcional.',
                        style: TextStyle(
                          fontSize: screenWidth * 0.04, // Tamaño dinámico
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          } else {
            // Diseño para pantallas pequeñas
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Imagen arriba
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/21.webp', // Reemplaza con tu ruta de imagen
                    width: screenWidth * 0.8, // Tamaño dinámico
                    height: screenWidth * 0.5, // Tamaño dinámico
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 16), // Espacio entre imagen y texto
                // Texto descriptivo debajo
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Accesorios del Kit',
                      style: TextStyle(
                        fontSize: screenWidth * 0.06, // Tamaño dinámico
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Los accesorios del kit incluyen cables, conectores, soportes y más, '
                      'diseñados para garantizar una instalación completa y funcional.',
                      style: TextStyle(
                        fontSize: screenWidth * 0.045, // Tamaño dinámico
                        color: Colors.grey[700],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
