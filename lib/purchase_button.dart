import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

// Instancia de logger
var logger = Logger();

class PurchaseButton extends StatefulWidget {
  const PurchaseButton({super.key});

  @override
  PurchaseButtonState createState() =>
      PurchaseButtonState(); // Hacer público el estado
}

class PurchaseButtonState extends State<PurchaseButton> {
  // Hacer público el estado
  // Controladores del formulario
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _neighborhoodController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();

  // Método para mostrar el modal con el formulario
  void _showPurchaseModal() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirmar Compra'),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildTextField('Nombre', _nameController),
                const SizedBox(height: 10),
                _buildTextField('Teléfono', _phoneController,
                    keyboardType: TextInputType.phone),
                const SizedBox(height: 10),
                _buildTextField('Dirección', _addressController),
                const SizedBox(height: 10),
                _buildTextField('Barrio', _neighborhoodController),
                const SizedBox(height: 10),
                _buildTextField('Ciudad', _cityController),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Cerrar el modal
              },
              child: const Text('Cancelar'),
            ),
            ElevatedButton(
              onPressed: _onConfirmPurchase,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              child: const Text('Confirmar Compra'),
            ),
          ],
        );
      },
    );
  }

  // Widget para construir los TextFields
  Widget _buildTextField(String label, TextEditingController controller,
      {TextInputType keyboardType = TextInputType.text}) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
      ),
    );
  }

  // Método para confirmar la compra e insertar datos en Supabase
  void _onConfirmPurchase() async {
    logger.i("Compra confirmada con los siguientes datos:");
    logger.i("Nombre: ${_nameController.text}");
    logger.i("Teléfono: ${_phoneController.text}");
    logger.i("Dirección: ${_addressController.text}");
    logger.i("Barrio: ${_neighborhoodController.text}");
    logger.i("Ciudad: ${_cityController.text}");

    final response = await Supabase.instance.client.from('kits').insert({
      'nombre': _nameController.text,
      'telefono': _phoneController.text,
      'direccion': _addressController.text,
      'barrio': _neighborhoodController.text,
      'ciudad': _cityController.text,
    }).execute();

    if (response.error == null) {
      logger.i("Datos insertados correctamente en Supabase");
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
              content: Text('¡Compra confirmada y datos guardados!')),
        );
      }
    } else {
      logger
          .e("Error al insertar datos en Supabase: ${response.error!.message}");
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text(
                  'Error al guardar los datos: ${response.error!.message}')),
        );
      }
    }

    if (mounted) {
      Navigator.of(context).pop(); // Cierra el modal
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _showPurchaseModal,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      ),
      child: const Text('Comprar', style: TextStyle(fontSize: 18)),
    );
  }
}
