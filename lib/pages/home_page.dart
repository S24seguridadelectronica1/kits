import 'package:flutter/material.dart';
import '../widgets/description_widget.dart';
import '../widgets/beneficios.dart';
import '../widgets/camaras.dart';
import '../widgets/garantia_disco_duro.dart';
import '../widgets/discoduro.dart';
import '../widgets/accesoriosdelkit.dart';
import '../widgets/fuentesdeenergia.dart';
import '../widgets/video_baluns.dart';
import '../widgets/bornera.dart';
import '../widgets/cable.dart';
import '../widgets/pague_en_casa.dart';
import '../widgets/price.dart';
import '../widgets/formulario.dart';
import '../widgets/mensaje.dart';
import '../widgets/llamada.dart';
import '../widgets/dvr.dart';
import '../widgets/garantia.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final String imagePath = 'assets/images/1.webp';

    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            const Color.fromRGBO(156, 145, 255, 1), // Color del fondo
        title: const Text(
          'Servicio contra entrega en Bucaramanga y su área metropolitana',
          style: TextStyle(
            color: Colors.white, // Cambia el color del texto aquí
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0), // Reducido a 8.0
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 800) {
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
                      const SizedBox(width: 20), // Reducido el espacio
                      const Expanded(
                        child: DescriptionWidget(
                          fontSizeTitle: 42,
                          fontSizeText: 18,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20), // Reducido el espacio
                  const Beneficios(),
                  const SizedBox(height: 20), // Reducido el espacio
                  const DvrWidget(),
                  const SizedBox(height: 20), // Reducido el espacio
                  const Garantia(),
                  const SizedBox(height: 20), // Reducido el espacio
                  const CamarasWidget(),
                  const SizedBox(height: 20), // Reducido el espacio
                  const GarantiaDiscoDuro(),
                  const SizedBox(height: 20), // Reducido el espacio
                  const DiscoDuroWidget(),
                  const SizedBox(height: 20), // Reducido el espacio
                  const AccesoriosDelKit(),
                  const SizedBox(height: 20), // Reducido el espacio
                  const FuentesDeEnergia(),
                  const SizedBox(height: 20), // Reducido el espacio
                  const Videobaluns(),
                  const SizedBox(height: 20), // Reducido el espacio
                  const Borneras(),
                  const SizedBox(height: 20), // Reducido el espacio
                  const Cable(),
                  const SizedBox(height: 20), // Reducido el espacio
                  const PagueEnCasa(),
                  const SizedBox(height: 20), // Reducido el espacio
                  const Price(),
                  const SizedBox(height: 20), // Reducido el espacio
                  const FormularioWidget(),
                  const SizedBox(height: 20), // Reducido el espacio
                  const MensajeButton(),
                  const SizedBox(height: 20), // Reducido el espacio
                  const LlamadaButton(),
                  const SizedBox(height: 20), // Reducido el espacio
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        '/kit_8',
                      );
                    },
                    child: const Text('Ir al Kit 8'),
                  ),
                ],
              );
            } else {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    imagePath,
                    width: screenWidth * 0.8,
                    height: screenWidth * 0.8,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 10), // Reducido el espacio
                  const DescriptionWidget(fontSizeTitle: 32, fontSizeText: 16),
                  const SizedBox(height: 20), // Reducido el espacio
                  const Beneficios(),
                  const SizedBox(height: 20), // Reducido el espacio
                  const DvrWidget(),
                  const SizedBox(height: 20), // Reducido el espacio
                  const Garantia(),
                  const SizedBox(height: 20), // Reducido el espacio
                  const CamarasWidget(),
                  const SizedBox(height: 20), // Reducido el espacio
                  const GarantiaDiscoDuro(),
                  const SizedBox(height: 20), // Reducido el espacio
                  const DiscoDuroWidget(),
                  const SizedBox(height: 20), // Reducido el espacio
                  const AccesoriosDelKit(),
                  const SizedBox(height: 20), // Reducido el espacio
                  const FuentesDeEnergia(),
                  const SizedBox(height: 20), // Reducido el espacio
                  const Videobaluns(),
                  const SizedBox(height: 20), // Reducido el espacio
                  const Borneras(),
                  const SizedBox(height: 20), // Reducido el espacio
                  const Cable(),
                  const SizedBox(height: 20), // Reducido el espacio
                  const PagueEnCasa(),
                  const SizedBox(height: 20), // Reducido el espacio
                  const Price(),
                  const SizedBox(height: 20), // Reducido el espacio
                  const FormularioWidget(),
                  const SizedBox(height: 20), // Reducido el espacio
                  const MensajeButton(),
                  const SizedBox(height: 20), // Reducido el espacio
                  const LlamadaButton(),
                  const SizedBox(height: 20), // Reducido el espacio
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        '/kit_8',
                      );
                    },
                    child: const Text('Ir al Kit 8'),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
