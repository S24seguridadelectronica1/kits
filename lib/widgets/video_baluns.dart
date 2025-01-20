import 'package:flutter/material.dart';

class Videobaluns extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  const Videobaluns({
    super.key,
    required this.title,
    required this.description,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    // Al hacer clic en la imagen, se abre la imagen en pantalla completa
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            FullScreenImagePage(imagePath: imagePath),
                      ),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      imagePath,
                      width: screenWidth * 0.4,
                      height: screenWidth * 0.3,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: screenWidth * 0.05,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 241, 220, 220),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        description,
                        style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          color: const Color.fromRGBO(175, 170, 170, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          } else {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    // Al hacer clic en la imagen, se abre la imagen en pantalla completa
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            FullScreenImagePage(imagePath: imagePath),
                      ),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      imagePath,
                      width: screenWidth * 0.8,
                      height: screenWidth * 0.5,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: screenWidth * 0.06,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 250, 239, 239),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      description,
                      style: TextStyle(
                        fontSize: screenWidth * 0.045,
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

class FullScreenImagePage extends StatelessWidget {
  final String imagePath;

  const FullScreenImagePage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context); // Cierra la vista de pantalla completa
            },
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context); // Cierra la vista de pantalla completa
        },
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(0.0), // Sin bordes redondeados
            child: Image.asset(
              imagePath,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover, // La imagen se ajusta al tamaño de la pantalla
            ),
          ),
        ),
      ),
    );
  }
}
