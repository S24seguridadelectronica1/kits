import 'package:flutter/material.dart';

class Price extends StatelessWidget {
  const Price({super.key});

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
                    'assets/images/1.webp', // Reemplaza con tu ruta de imagen
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
                        'Precio del kit',
                        style: TextStyle(
                          fontSize: screenWidth * 0.05, // Tamaño dinámico
                          fontWeight: FontWeight.bold,
                          color: const Color.from(
                              alpha: 1, red: 0.969, green: 0.941, blue: 0.941),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  '4 camaras de 2mpx, grabacion de 4 mpx lite + inteligencia artifical X ',
                              style: TextStyle(
                                fontSize: screenWidth * 0.04, // Tamaño dinámico
                                color: Colors.grey[700],
                              ),
                            ),
                            TextSpan(
                              text: '\$780.000 mil',
                              style: TextStyle(
                                fontSize: screenWidth *
                                    0.045, // Tamaño un poco más grande
                                fontWeight: FontWeight.bold,
                                color: Colors
                                    .amber, // Color llamativo para el precio
                                backgroundColor:
                                    Colors.black87, // Fondo para resaltar
                              ),
                            ),
                            TextSpan(
                              text: '.',
                              style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                color: Colors.grey[700],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          } else {
            // Diseño para pantallas pequeñas
            return Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Imagen a la izquierda
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/1.webp', // Reemplaza con tu ruta de imagen
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
                      const SizedBox(height: 16),
                      Text(
                        'Precio del kit',
                        style: TextStyle(
                          fontSize: screenWidth * 0.05, // Tamaño dinámico
                          fontWeight: FontWeight.bold,
                          color: const Color.from(
                              alpha: 1, red: 0.969, green: 0.941, blue: 0.941),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  '4 camaras de 2mpx, grabacion de 4 mpx lite + inteligencia artifical X ',
                              style: TextStyle(
                                fontSize: screenWidth * 0.04, // Tamaño dinámico
                                color: const Color.fromRGBO(233, 207, 207, 1),
                              ),
                            ),
                            TextSpan(
                              text: '\$780.000 mil',
                              style: TextStyle(
                                fontSize: screenWidth *
                                    0.045, // Tamaño un poco más grande
                                fontWeight: FontWeight.bold,
                                color: Colors
                                    .amber, // Color llamativo para el precio
                                backgroundColor:
                                    Colors.black87, // Fondo para resaltar
                              ),
                            ),
                            TextSpan(
                              text: '.',
                              style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                color: const Color.fromRGBO(233, 207, 207, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
