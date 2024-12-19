import 'package:flutter/material.dart';
import '../widgets/description_widget.dart';
import '../widgets/new_section_widget.dart';
import '../widgets/beneficios.dart';
import '../widgets/garantia.dart';
import '../widgets/camaras.dart';
import '../widgets/garantia_disco_duro.dart';
import '../widgets/discoduro.dart';
import '../widgets/accesoriosdelkit.dart';
import '../widgets/fuentesdeenergia.dart';
import '../widgets/video_baluns.dart';
import '../widgets/bornera.dart';
import '../widgets/cable.dart';
import '../widgets/pague_en_casa.dart';
import '../widgets/price.dart'; // Importa el archivo price.dart
import '../widgets/formulario.dart'; // Importa el archivo formulario.dart
import '../widgets/mensaje.dart'; // Importa el botón de WhatsApp
import '../widgets/llamada.dart'; // Importa el botón de llamada

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final String imagePath =
        'assets/images/your_image.png'; // Declara la ruta de la imagen aquí

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text('Mi Aplicación'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 800) {
              // Diseño para pantallas grandes
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        imagePath,
                        width: screenWidth * 0.5,
                        height: screenWidth * 0.5,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(width: 50),
                      const Expanded(
                        child: DescriptionWidget(
                          fontSizeTitle: 42,
                          fontSizeText: 18,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  const Beneficios(),
                  const SizedBox(height: 40),
                  const NewSectionWidget(),
                  const SizedBox(height: 40),
                  const Garantia(),
                  const SizedBox(height: 40),
                  const CamarasWidget(),
                  const SizedBox(height: 40),
                  const GarantiaDiscoDuro(),
                  const SizedBox(height: 40),
                  const DiscoDuroWidget(),
                  const SizedBox(height: 40),
                  const AccesoriosDelKit(),
                  const SizedBox(height: 40),
                  const FuentesDeEnergia(),
                  const SizedBox(height: 40),
                  const Videobaluns(),
                  const SizedBox(height: 40),
                  const Borneras(),
                  const SizedBox(height: 40),
                  const Cable(),
                  const SizedBox(height: 40),
                  const PagueEnCasa(),
                  const SizedBox(height: 40),
                  const Price(), // Aquí se incluye el widget Price
                  const SizedBox(height: 40),
                  const FormularioWidget(), // Incluye el widget del formulario
                  const SizedBox(height: 40),
                  const MensajeButton(), // Agrega el botón de WhatsApp aquí
                  const SizedBox(height: 40),
                  const LlamadaButton(), // Agrega el botón de llamada aquí
                ],
              );
            } else {
              // Diseño para pantallas pequeñas
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    imagePath,
                    width: screenWidth * 0.5,
                    height: screenWidth * 0.5,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 20),
                  const DescriptionWidget(fontSizeTitle: 32, fontSizeText: 16),
                  const SizedBox(height: 40),
                  const Beneficios(),
                  const SizedBox(height: 40),
                  const NewSectionWidget(),
                  const SizedBox(height: 40),
                  const Garantia(),
                  const SizedBox(height: 40),
                  const CamarasWidget(),
                  const SizedBox(height: 40),
                  const GarantiaDiscoDuro(),
                  const SizedBox(height: 40),
                  const DiscoDuroWidget(),
                  const SizedBox(height: 40),
                  const AccesoriosDelKit(),
                  const SizedBox(height: 40),
                  const FuentesDeEnergia(),
                  const SizedBox(height: 40),
                  const Videobaluns(),
                  const SizedBox(height: 40),
                  const Borneras(),
                  const SizedBox(height: 40),
                  const Cable(),
                  const SizedBox(height: 40),
                  const PagueEnCasa(),
                  const SizedBox(height: 40),
                  const Price(), // Aquí también se incluye en pantallas pequeñas
                  const SizedBox(height: 40),
                  const FormularioWidget(), // Incluye el widget del formulario
                  const SizedBox(height: 40),
                  const MensajeButton(), // Agrega el botón de WhatsApp aquí
                  const SizedBox(height: 40),
                  const LlamadaButton(), // Agrega el botón de llamada aquí
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
