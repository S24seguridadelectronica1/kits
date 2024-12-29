import 'package:flutter/material.dart';
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
import '../widgets/titulo.dart';
import '../widgets/encabezado.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 5, 47, 1), // Color del fondo
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            TituloWidget(
              tituloText: 'Servicio contra entrega + envio gratis!',
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(0.0),
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 800) {
              // *** INICIO DE PANTALLAS GRANDES ***
              return _buildLargeScreenLayout(screenWidth, context);
              // *** FIN DE PANTALLAS GRANDES ***
            } else {
              // *** INICIO DE PANTALLAS PEQUEÑAS ***
              return _buildSmallScreenLayout(screenWidth, context);
              // *** FIN DE PANTALLAS PEQUEÑAS ***
            }
          },
        ),
      ),
    );
  }

  Widget _buildLargeScreenLayout(double screenWidth, BuildContext context) {
    return Column(
      children: [
        Encabezado(
          titulo: 'solo para Bucaramanga y el área metropolitana',
          imagePath: 'assets/images/1.webp',
          descripcion:
              'kit de 4 cámaras Full HD 1080p (2mpx) + grabacion de 4 mpx lite',
          textoAdicional:
              'Cámaras de alta definición, ideales para todo tipo de negocio, casa u oficina, tanto para interiores como para exteriores',
          precio:
              '\$199.99', // Asegúrate de que todos los parámetros están separados por comas
        ),
        const SizedBox(height: 20),
        const Beneficios(),
        const SizedBox(height: 20),
        const DvrWidget(),
        const SizedBox(height: 20),
        const Garantia(),
        const SizedBox(height: 20),
        const CamarasWidget(),
        const SizedBox(height: 20),
        const GarantiaDiscoDuro(),
        const SizedBox(height: 20),
        const DiscoDuroWidget(),
        const SizedBox(height: 20),
        const AccesoriosDelKit(),
        const SizedBox(height: 20),
        const FuentesDeEnergia(),
        const SizedBox(height: 20),
        const Videobaluns(),
        const SizedBox(height: 20),
        const Borneras(),
        const SizedBox(height: 20),
        const Cable(),
        const SizedBox(height: 20),
        const PagueEnCasa(),
        const SizedBox(height: 20),
        const Price(),
        const SizedBox(height: 20),
        const FormularioWidget(),
        const SizedBox(height: 20),
        const MensajeButton(),
        const SizedBox(height: 20),
        const LlamadaButton(),
        const SizedBox(height: 20),
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

  Widget _buildSmallScreenLayout(double screenWidth, BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Encabezado(
          titulo: 'solo para Bucaramanga y el área metropolitana',
          imagePath: 'assets/images/1.webp',
          descripcion: 'kit de 4 cámaras de seguridad de alta definición',
          textoAdicional: 'ideal para todo tipo de negocio, casa o oficina',
          precio:
              '\$199.99', // Asegúrate de que todos los parámetros están separados por comas
        ),
        const SizedBox(height: 10),
        const Text(
          'Descripción sobre el producto o servicio',
          style: TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 20),
        const Beneficios(),
        const SizedBox(height: 20),
        const DvrWidget(),
        const SizedBox(height: 20),
        const Garantia(),
        const SizedBox(height: 20),
        const CamarasWidget(),
        const SizedBox(height: 20),
        const GarantiaDiscoDuro(),
        const SizedBox(height: 20),
        const DiscoDuroWidget(),
        const SizedBox(height: 20),
        const AccesoriosDelKit(),
        const SizedBox(height: 20),
        const FuentesDeEnergia(),
        const SizedBox(height: 20),
        const Videobaluns(),
        const SizedBox(height: 20),
        const Borneras(),
        const SizedBox(height: 20),
        const Cable(),
        const SizedBox(height: 20),
        const PagueEnCasa(),
        const SizedBox(height: 20),
        const Price(),
        const SizedBox(height: 20),
        const FormularioWidget(),
        const SizedBox(height: 20),
        const MensajeButton(),
        const SizedBox(height: 20),
        const LlamadaButton(),
        const SizedBox(height: 20),
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
}
