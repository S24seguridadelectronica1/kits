import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'purchase_button.dart'; // Importa el botón de compra

const String camarasTitle = 'Cámaras de Seguridad';
const List<String> camarasImagePaths = [
  'assets/images/8.webp',
  'assets/images/9.webp',
  'assets/images/10.webp',
  'assets/images/11.webp',
  'assets/images/12.webp',
  'assets/images/13.webp',
  'assets/images/14.webp',
  'assets/images/15.webp',
];
const String camarasDescription =
    'Las cámaras de seguridad ofrecen una vigilancia constante para proteger tu hogar y tu negocio, con alta definición y visión nocturna.';

class CamarasWidget extends StatelessWidget {
  const CamarasWidget({super.key});

  void _showFullScreenImage(BuildContext context, int initialIndex) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FullScreenImageCarousel(
          initialIndex: initialIndex,
          imagePaths: camarasImagePaths,
          description: camarasDescription,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Texto descriptivo de las cámaras
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    camarasTitle,
                    style: TextStyle(
                      fontSize: screenWidth * 0.08, // Ajustar tamaño del título
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  Text(
                    camarasDescription,
                    style: TextStyle(
                      fontSize: screenWidth *
                          0.04, // Ajustar tamaño de la descripción
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: screenWidth * 0.02),

            // Carrusel de imágenes con botón de compra
            Expanded(
              child: Column(
                children: [
                  CarouselSlider.builder(
                    itemCount: camarasImagePaths.length,
                    itemBuilder:
                        (BuildContext context, int index, int realIndex) {
                      return GestureDetector(
                        onTap: () => _showFullScreenImage(context, index),
                        child: AspectRatio(
                          aspectRatio: 1.5,
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              // Imagen de la sección
                              Image.asset(
                                camarasImagePaths[index],
                                fit: BoxFit.cover,
                              ),
                              // Ícono de expansión con color dinámico
                              Positioned(
                                top: 10,
                                right: 10,
                                child: ColorFiltered(
                                  colorFilter: ColorFilter.mode(
                                    _getIconColorForBackground(
                                        camarasImagePaths[index]),
                                    BlendMode.srcIn,
                                  ),
                                  child: Icon(
                                    Icons.zoom_in,
                                    size: screenWidth *
                                        0.1, // Ajustar tamaño del ícono
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    options: CarouselOptions(
                      autoPlay: false,
                      enlargeCenterPage: true,
                      aspectRatio: 1.5,
                      viewportFraction: 0.8,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.1),
                  const PurchaseButton(buttonText: '¡Pagalo en Casa!'),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  // Método para decidir el color del ícono dependiendo del fondo de la imagen
  Color _getIconColorForBackground(String imagePath) {
    // Aquí puedes usar un paquete para obtener el color dominante de la imagen
    // Pero por ahora, asumimos que si la imagen es clara, usamos un ícono oscuro y viceversa
    // Implementa aquí la lógica para determinar el color del ícono
    return Colors
        .white; // Puedes ajustar esto según el análisis del color de la imagen
  }
}

class FullScreenImageCarousel extends StatelessWidget {
  final int initialIndex;
  final List<String> imagePaths;
  final String description;

  const FullScreenImageCarousel({
    required this.initialIndex,
    required this.imagePaths,
    required this.description,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          CarouselSlider.builder(
            itemCount: imagePaths.length,
            itemBuilder: (BuildContext context, int index, int realIndex) {
              return Center(
                child: InteractiveViewer(
                  panEnabled: true,
                  boundaryMargin: const EdgeInsets.all(20),
                  minScale: 1,
                  maxScale: 5,
                  child: Image.asset(
                    imagePaths[index],
                    fit: BoxFit.contain,
                    width: screenWidth,
                    height: screenHeight,
                  ),
                ),
              );
            },
            options: CarouselOptions(
              initialPage: initialIndex,
              enableInfiniteScroll: false,
              autoPlay: false,
              enlargeCenterPage: false,
              aspectRatio: screenWidth / screenHeight,
              viewportFraction: 1.0,
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Text(
              description,
              style: TextStyle(
                color: Colors.white,
                fontSize: screenWidth * 0.04,
                backgroundColor: Colors.black54,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: IconButton(
              icon: Icon(
                Icons.close,
                color: Colors.white,
                size: screenWidth * 0.08,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ],
      ),
    );
  }
}
