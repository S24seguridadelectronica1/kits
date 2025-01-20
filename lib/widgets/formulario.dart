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
    'ciudad y barrio':
        '', // Cambié este campo para que coincida con el campo de Supabase
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
      'ciudad y barrio': formData[
          'ciudad y barrio'], // Asegúrate de que coincida con el nombre en Supabase
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(width: 8),
                  Expanded(
                    child: const Text(
                      'Por favor, complete el formulario para hacer llegar el pedido a su domicilio. '
                      'Pago contra entrega solo en Bucaramanga y su área metropolitana, por un valor total de \$780,000, ¡domicilio gratis! '
                      'entrega inmediata!. '
                      'Realizamos una llamada de confirmación para verificar la dirección y la disponibilidad de los equipos. ',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                      overflow: TextOverflow
                          .visible, // Cambié esto para que el texto no se recorte
                    ),
                  ),
                ],
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
                label: 'Ciudad y Barrio',
                fieldKey:
                    'ciudad y barrio', // Asegúrate de que coincida con el nombre de la columna en Supabase
                inputType: TextInputType.text,
              ),
              const SizedBox(height: 16),
              const Text(
                'Entrega de equipos en los siguientes horarios:\n\n'
                'De lunes a viernes: de 8:00 a.m. a 6:00 p.m. (jornada continua).\n'
                'Sábados: de 8:00 a.m. a 1:00 p.m.\n'
                'Domingos y festivos no hacemos entregas.\n\n'
                'Recibimos pagos en efectivo, Nequi o Bancolombia.',
                style: TextStyle(
                    fontSize: 14,
                    color: Color.from(alpha: 0.781, red: 1, green: 1, blue: 1)),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Center(
                child: ElevatedButton(
                  onPressed: isPurchased
                      ? null
                      : submitForm, // Desactivar si ya se compró
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isPurchased
                        ? Colors.green
                        : Colors.blue, // Cambiar a azul
                    minimumSize: Size(300, 50), // Aumentar el tamaño del botón
                    textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight:
                            FontWeight.bold), // Aumentar el tamaño de la fuente
                  ),
                  child: Text(
                    isPurchased ? 'Comprado' : 'Comprar', // Cambiar texto
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
