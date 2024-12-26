import 'package:flutter/material.dart';
import '../widgets_kit_8/description_widget.dart';
import '../widgets_kit_8/beneficios.dart';
import '../widgets_kit_8/garantia.dart';
import '../widgets_kit_8/camaras.dart';
import '../widgets_kit_8/garantia_disco_duro.dart';
import '../widgets_kit_8/discoduro.dart';
import '../widgets_kit_8/accesoriosdelkit.dart';
import '../widgets_kit_8/fuentesdeenergia.dart';
import '../widgets_kit_8/video_baluns.dart';
import '../widgets_kit_8/bornera.dart';
import '../widgets_kit_8/cable.dart';
import '../widgets_kit_8/pague_en_casa.dart';
import '../widgets_kit_8/price.dart';
import '../widgets_kit_8/formulario.dart';
import '../widgets_kit_8/mensaje.dart';
import '../widgets_kit_8/llamada.dart';
import '../widgets_kit_8/dvr.dart'; // Importa el widget DvrWidget

class Kit8Page extends StatelessWidget {
  const Kit8Page({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final String imagePath = 'assets/images/1.webp'; // Ruta de la imagen

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text(
          'Kit de cámaras de seguridad contra entrega en Bucaramanga',
        ),
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
                        width: screenWidth * 0.8,
                        height: screenWidth * 0.8,
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
                  const DvrWidget(), // Incluye el primer widget
                  const SizedBox(height: 40),
                  const Beneficios(),
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
                  const Price(),
                  const SizedBox(height: 40),
                  const FormularioWidget(),
                  const SizedBox(height: 40),
                  const MensajeButton(),
                  const SizedBox(height: 40),
                  const LlamadaButton(),
                ],
              );
            } else {
              // Diseño para pantallas pequeñas
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    imagePath,
                    width: screenWidth * 0.8,
                    height: screenWidth * 0.8,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 20),
                  const DescriptionWidget(fontSizeTitle: 32, fontSizeText: 16),
                  const SizedBox(height: 40),
                  const DvrWidget(), // Incluye el primer widget
                  const SizedBox(height: 40),
                  const Beneficios(),
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
                  const Price(),
                  const SizedBox(height: 40),
                  const FormularioWidget(),
                  const SizedBox(height: 40),
                  const MensajeButton(),
                  const SizedBox(height: 40),
                  const LlamadaButton(),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
