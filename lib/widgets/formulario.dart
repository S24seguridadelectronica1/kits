import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:logger/logger.dart';

class FormularioWidget extends StatefulWidget {
  const FormularioWidget({super.key});

  @override
  FormularioWidgetState createState() => FormularioWidgetState();
}

class FormularioWidgetState extends State<FormularioWidget> {
  final formKey = GlobalKey<FormState>();
  final Map<String, String> formData = {
    'nombre': '',
    'telefono': '',
    'direccion': '',
    'barrio': '',
    'ciudad': ''
  };
  final Set<String> camposExitosos = {};
  bool isPurchased = false; // Nueva variable para rastrear el estado del botón

  Future<void> submitForm() async {
    if (!formKey.currentState!.validate()) {
      return;
    }

    formKey.currentState!.save();

    var logger = Logger();

    // Inserción en la base de datos Supabase
    final response = await Supabase.instance.client.from('kits').insert({
      'nombre': formData['nombre'],
      'telefono': formData['telefono'],
      'direccion': formData['direccion'],
      'barrio': formData['barrio'],
      'ciudad': formData['ciudad'],
    }).execute();

    if (response.error == null) {
      logger.i("Datos insertados correctamente en Supabase");
      if (mounted) {
        setState(() {
          camposExitosos.addAll(formData.keys);
          isPurchased = true; // Actualizar el estado del botón
        });
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
              content: Text('¡Formulario enviado y datos guardados!')),
        );
      }
    } else {
      logger
          .e("Error al insertar datos en Supabase: ${response.error!.message}");
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content:
                Text('Error al guardar los datos: ${response.error!.message}'),
          ),
        );
      }
    }
  }

  Widget buildTextFormField({
    required String label,
    required String fieldKey,
    required TextInputType inputType,
  }) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(labelText: label),
            keyboardType: inputType,
            onSaved: (value) => formData[fieldKey] = value ?? '',
            validator: (value) =>
                value == null || value.isEmpty ? 'Campo requerido' : null,
          ),
        ),
        if (camposExitosos.contains(fieldKey))
          const Icon(Icons.check_circle, color: Colors.green),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Formulario de Información',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              buildTextFormField(
                label: 'Nombre',
                fieldKey: 'nombre',
                inputType: TextInputType.text,
              ),
              const SizedBox(height: 8),
              buildTextFormField(
                label: 'Teléfono',
                fieldKey: 'telefono',
                inputType: TextInputType.phone,
              ),
              const SizedBox(height: 8),
              buildTextFormField(
                label: 'Dirección',
                fieldKey: 'direccion',
                inputType: TextInputType.text,
              ),
              const SizedBox(height: 8),
              buildTextFormField(
                label: 'Barrio',
                fieldKey: 'barrio',
                inputType: TextInputType.text,
              ),
              const SizedBox(height: 8),
              buildTextFormField(
                label: 'Ciudad',
                fieldKey: 'ciudad',
                inputType: TextInputType.text,
              ),
              const SizedBox(height: 16),
              Center(
                child: ElevatedButton(
                  onPressed: isPurchased
                      ? null
                      : submitForm, // Desactivar si ya se compró
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        isPurchased ? Colors.green : null, // Cambiar color
                  ),
                  child: Text(
                      isPurchased ? 'Comprado' : 'Comprar'), // Cambiar texto
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
