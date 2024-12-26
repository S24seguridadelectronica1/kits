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
          'Beneficios del Kit de Cámaras',
          style: TextStyle(
            fontSize: screenWidth *
                0.06, // Ajusta el tamaño del texto según el ancho de la pantalla
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20), // Espacio entre título y lista

        // Lista de beneficios
        Column(
          children: const [
            ListTile(
              leading: Icon(Icons.check_circle, color: Colors.green),
              title: Text('Monitoreo en tiempo real desde tu móvil'),
            ),
            ListTile(
              leading: Icon(Icons.check_circle, color: Colors.green),
              title: Text(
                  'Notificaciones instantáneas de detección de movimiento'),
            ),
            ListTile(
              leading: Icon(Icons.check_circle, color: Colors.green),
              title: Text('Grabación en alta definición 1080p'),
            ),
            ListTile(
              leading: Icon(Icons.check_circle, color: Colors.green),
              title: Text('Almacenamiento seguro en la nube'),
            ),
            ListTile(
              leading: Icon(Icons.check_circle, color: Colors.green),
              title: Text('Fácil instalación y configuración'),
            ),
          ],
        ),
      ],
    );
  }
}
