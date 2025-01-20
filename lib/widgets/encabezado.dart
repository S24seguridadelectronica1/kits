import 'package:flutter/material.dart';
import 'package:kits/widgets/purchase_button.dart';

class Encabezado extends StatelessWidget {
  final String imagePath;
  final String titulo;
  final String descripcion;
  final String textoAdicional;
  final String precio; // Agregado para el precio

  const Encabezado({
    super.key,
    required this.imagePath,
    required this.titulo,
    required this.descripcion,
    required this.textoAdicional,
    required this.precio, // Asegúrate de recibir el precio
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth > 1440) {
      return _buildExtraLargeScreen();
    } else if (screenWidth > 1024) {
      return _buildLargeScreen();
    } else if (screenWidth > 600) {
      return _buildMediumScreen();
    } else {
      return _buildSmallScreen();
    }
  }

  Widget _buildExtraLargeScreen() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Título
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            color: Colors.blue,
            child: Text(
              titulo,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 24.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(
                  imagePath,
                  width: 400,
                  height: 400,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 24.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      descripcion,
                      style: const TextStyle(fontSize: 18.0),
                    ),
                    const SizedBox(height: 12.0),
                    Text(
                      textoAdicional,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontStyle: FontStyle.italic,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 12.0),
                    Text(
                      'Precio: $precio',
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    // Botón de compra
                    const PurchaseButton(buttonText: 'Comprar!'),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildLargeScreen() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Título que ocupa todo el ancho
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            color: Colors.blue,
            child: Text(
              titulo,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 24.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  imagePath,
                  width: 550,
                  height: 550,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 16.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      descripcion,
                      style: const TextStyle(fontSize: 16.0),
                    ),
                    const SizedBox(height: 12.0),
                    Text(
                      textoAdicional,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontStyle: FontStyle.italic,
                        color: Colors.grey,
                      ),
                      maxLines: null, // Permitir líneas ilimitadas
                      overflow: TextOverflow.visible, // Mostrar todo el texto
                    ),
                    const SizedBox(height: 12.0),
                    Text(
                      'Precio: $precio',
                      style: const TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    // Botón de compra
                    const PurchaseButton(buttonText: 'Comprar!'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMediumScreen() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Título que ocupa todo el ancho
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            color: Colors.blue,
            child: Text(
              titulo,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  imagePath,
                  width: 220,
                  height: 220,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 12.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      descripcion,
                      style: const TextStyle(fontSize: 14.0),
                    ),
                    const SizedBox(height: 12.0),
                    Text(
                      textoAdicional,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontStyle: FontStyle.italic,
                        color: Colors.grey,
                      ),
                      maxLines: null, // Permitir líneas ilimitadas
                      overflow: TextOverflow.visible, // Mostrar todo el texto
                    ),
                    const SizedBox(height: 12.0),
                    Text(
                      'Precio: $precio',
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    // Botón de compra
                    const PurchaseButton(buttonText: 'Comprar!'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSmallScreen() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(0.0),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Título
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 0.0),
              color: const Color.fromARGB(255, 8, 6, 6),
              child: Text(
                titulo,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            // Imagen
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                imagePath,
                width: 300,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8.0),
            // Descripción
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1.0),
              child: Text(
                descripcion,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 18.0),
              ),
            ),
            const SizedBox(height: 12.0),
            // Texto adicional
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1.0),
              child: Text(
                textoAdicional,
                style: const TextStyle(
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(height: 12.0),
            // Precio
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Precio: $precio',
                style: const TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            // Botón de compra
            const PurchaseButton(buttonText: 'Comprar!'),
          ],
        ),
      ),
    );
  }
}
