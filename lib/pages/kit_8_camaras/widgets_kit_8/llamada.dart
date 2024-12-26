import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LlamadaButton extends StatelessWidget {
  const LlamadaButton({super.key});

  void _launchCall() async {
    final String phone = '3046615865';
    final Uri callUri = Uri.parse('tel:$phone');

    if (await canLaunchUrl(callUri)) {
      await launchUrl(callUri);
    } else {
      throw 'No se pudo realizar la llamada.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _launchCall,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: 32.0), // Más espacio alrededor del texto
        textStyle: const TextStyle(fontSize: 20), // Aumenta el tamaño del texto
        minimumSize: Size(double.infinity,
            60), // Asegura que el botón ocupe todo el ancho y tenga una altura mayor
      ),
      child: const Text('Llamar al 3046615865'),
    );
  }
}
