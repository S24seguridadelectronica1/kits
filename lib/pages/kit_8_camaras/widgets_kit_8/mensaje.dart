import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MensajeButton extends StatelessWidget {
  const MensajeButton({super.key});

  void _launchWhatsApp() async {
    final String phone = '3046615865';
    final String message = 'Hola, estoy interesado en el kit de 4 cámaras.';
    final Uri whatsappUri =
        Uri.parse('https://wa.me/$phone?text=${Uri.encodeComponent(message)}');

    if (await canLaunchUrl(whatsappUri)) {
      await launchUrl(whatsappUri, mode: LaunchMode.externalApplication);
    } else {
      throw 'No se pudo abrir WhatsApp.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _launchWhatsApp,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: 32.0), // Más espacio alrededor del texto
        textStyle: const TextStyle(fontSize: 30), // Aumenta el tamaño del texto
        minimumSize: Size(double.infinity,
            60), // Asegura que el botón ocupe todo el ancho y tenga una altura mayor
      ),
      child: const Text('WhatsApp'),
    );
  }
}
