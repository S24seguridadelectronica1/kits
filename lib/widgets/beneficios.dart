import 'package:flutter/material.dart';

class Beneficios extends StatelessWidget {
  const Beneficios({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Título de la sección
        Text(
          'Beneficios del Kit',
          style: TextStyle(
            fontSize: screenWidth *
                0.06, // Ajusta el tamaño del texto según el ancho de la pantalla
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20), // Espacio entre título y lista

        // Lista de beneficios combinados
        Column(
          children: const [
            // Beneficios del DVR
            ListTile(
              leading: Icon(Icons.check_circle, color: Colors.green),
              title: Text('Tecnología avanzada de detección de movimiento'),
              subtitle: Text(
                'Clasificación precisa basada en aprendizaje profundo e identificación de humanos y vehículos.',
              ),
            ),
            ListTile(
              leading: Icon(Icons.check_circle, color: Colors.green),
              title: Text('Protección perimetral mejorada'),
              subtitle: Text(
                'Detección facial con análisis inteligente para monitoreo y seguridad.',
              ),
            ),
            ListTile(
              leading: Icon(Icons.check_circle, color: Colors.green),
              title: Text('Eficiencia en grabación y almacenamiento'),
              subtitle: Text(
                'Compresión H.265 Pro+ que reduce espacio de almacenamiento sin comprometer calidad.',
              ),
            ),
            ListTile(
              leading: Icon(Icons.check_circle, color: Colors.green),
              title: Text('Flexibilidad en conexiones'),
              subtitle: Text(
                'Compatibilidad con HDTVI, AHD, HDCVI, CVBS e IP, soportando hasta 6 canales IP.',
              ),
            ),
            ListTile(
              leading: Icon(Icons.check_circle, color: Colors.green),
              title: Text('Almacenamiento robusto'),
              subtitle: Text(
                'Capacidad de hasta 10 TB por disco y soporte para hasta 32 usuarios remotos simultáneamente.',
              ),
            ),
            ListTile(
              leading: Icon(Icons.check_circle, color: Colors.green),
              title: Text('Durabilidad garantizada'),
              subtitle: Text(
                'Operación estable en temperaturas extremas y construcción resistente.',
              ),
            ),

            // Beneficios de las cámaras de seguridad
            ListTile(
              leading: Icon(Icons.check_circle, color: Colors.green),
              title: Text('Alta calidad de imagen'),
              subtitle: Text(
                'Resolución Full HD 1080P para detalles precisos en monitoreo y grabación.',
              ),
            ),
            ListTile(
              leading: Icon(Icons.check_circle, color: Colors.green),
              title: Text('Visión nocturna infrarroja'),
              subtitle: Text(
                'Rango IR de hasta 20 m para vigilancia en total oscuridad.',
              ),
            ),
            ListTile(
              leading: Icon(Icons.check_circle, color: Colors.green),
              title: Text('Resistencia a condiciones extremas'),
              subtitle: Text(
                'Operación estable en temperaturas de -40°C a 60°C y construcción resistente a la humedad.',
              ),
            ),

            ListTile(
              leading: Icon(Icons.check_circle, color: Colors.green),
              title: Text('Funciones inteligentes'),
              subtitle: Text(
                'Ajuste automático de ganancia (AGC) para imágenes claras en condiciones de poca luz.',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
