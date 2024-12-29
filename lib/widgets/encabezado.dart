import 'package:flutter/material.dart';

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
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Título que ocupa todo el ancho
          Container(
            width:
                double.infinity, // Hace que el contenedor ocupe todo el ancho
            padding: const EdgeInsets.symmetric(
                vertical: 16.0), // Espaciado vertical
            color: Colors.blue, // Opcional: color de fondo para el título
            child: Text(
              titulo,
              textAlign: TextAlign.center, // Centrar el texto horizontalmente
              style: const TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Opcional: color del texto
              ),
            ),
          ),
          const SizedBox(
              height: 24.0), // Espacio entre el título y el contenido
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(
                  imagePath,
                  width: 200,
                  height: 200,
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
                      'Precio: $precio', // Muestra el precio debajo de la descripción adicional
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green, // Color para el precio
                      ),
                    ),
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
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Título que ocupa todo el ancho
          Container(
            width:
                double.infinity, // Hace que el contenedor ocupe todo el ancho
            padding: const EdgeInsets.symmetric(
                vertical: 16.0), // Espaciado vertical
            color: Colors.blue, // Opcional: color de fondo para el título
            child: Text(
              titulo,
              textAlign: TextAlign.center, // Centrar el texto horizontalmente
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Opcional: color del texto
              ),
            ),
          ),
          const SizedBox(
              height: 24.0), // Espacio entre el título y el contenido
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
                    ),
                    const SizedBox(height: 12.0),
                    Text(
                      'Precio: $precio', // Aquí se agregó el precio
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green, // Color para el precio
                      ),
                    ),
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
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Título que ocupa todo el ancho
          Container(
            width:
                double.infinity, // Hace que el contenedor ocupe todo el ancho
            padding: const EdgeInsets.symmetric(
                vertical: 16.0), // Espaciado vertical
            color: Colors.blue, // Opcional: color de fondo para el título
            child: Text(
              titulo,
              textAlign: TextAlign.center, // Centrar el texto horizontalmente
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Opcional: color del texto
              ),
            ),
          ),
          const SizedBox(
              height: 16.0), // Espacio entre el título y el contenido
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
                    ),
                    const SizedBox(height: 12.0),
                    Text(
                      'Precio: $precio', // Aquí se agregó el precio
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green, // Color para el precio
                      ),
                    ),
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Título que ocupa todo el ancho
          Container(
            width:
                double.infinity, // Hace que el contenedor ocupe todo el ancho
            padding: const EdgeInsets.symmetric(
                vertical: 16.0), // Espaciado vertical
            color: Colors.blue, // Opcional: color de fondo para el título
            child: Text(
              titulo,
              textAlign: TextAlign.center, // Centrar el texto horizontalmente
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Opcional: color del texto
              ),
            ),
          ),
          const SizedBox(
              height: 16.0), // Espacio entre el título y el contenido
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              imagePath,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            descripcion,
            textAlign: TextAlign.center,
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
          ),
          const SizedBox(height: 12.0),
          Text(
            'Precio: $precio', // Aquí se agregó el precio
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.green, // Color para el precio
            ),
          ),
        ],
      ),
    );
  }
}
