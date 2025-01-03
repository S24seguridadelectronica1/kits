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

class LoadingPlaceholder extends StatelessWidget {
  const LoadingPlaceholder({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: const EdgeInsets.all(16),
      child: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Future<Widget> _loadWidgetData(
      int index, BuildContext context, double screenWidth) async {
    // Simulamos una carga asíncrona para widgets pesados
    await Future.delayed(const Duration(milliseconds: 100));

    switch (index) {
      case 0:
        return FutureBuilder(
            future: _loadEncabezado(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const LoadingPlaceholder();
              }
              return Encabezado(
                titulo: 'solo para Bucaramanga y el área metropolitana',
                imagePath: 'assets/images/1.webp',
                descripcion:
                    'tecnologia acusense deteccion humanos y vehiculos!',
                textoAdicional:
                    'kit de 4 cámaras Full HD 1080p (2mpx) de HIKVISION con grabacion a 4 mpx lite, ideales para todo tipo de negocio, casa u oficina.',
                precio: '\$199.99',
              );
            });
      case 14: // FormularioWidget (componente pesado)
        return FutureBuilder(
            future: _loadFormulario(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const LoadingPlaceholder();
              }
              return const FormularioWidget();
            });
      // Widgets más ligeros sin FutureBuilder
      case 1:
        return const Beneficios();
      case 2:
        return const DvrWidget();
      case 3:
        return const Garantia();
      case 4:
        return const CamarasWidget();
      case 5:
        return const GarantiaDiscoDuro();
      case 6:
        return const DiscoDuroWidget();
      case 7:
        return const AccesoriosDelKit();
      case 8:
        return const FuentesDeEnergia();
      case 9:
        return const Videobaluns();
      case 10:
        return const Borneras();
      case 11:
        return const Cable();
      case 12:
        return const PagueEnCasa();
      case 13:
        return const Price();
      case 15:
        return const MensajeButton();
      case 16:
        return const LlamadaButton();
      case 17:
        return ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/kit_8');
          },
          child: const Text('Ir al Kit 8'),
        );
      default:
        return const SizedBox.shrink();
    }
  }

  // Métodos auxiliares para simular carga de componentes pesados
  Future<void> _loadEncabezado() async {
    await Future.delayed(const Duration(milliseconds: 300));
  }

  Future<void> _loadFormulario() async {
    await Future.delayed(const Duration(milliseconds: 200));
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    const int totalItems = 18;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(33, 55, 255, 0.588),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            TituloWidget(
              tituloText: 'Servicio contra entrega + envio gratis!',
            ),
          ],
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return ListView.separated(
            itemCount: totalItems,
            // Reducido el cacheExtent para mejor rendimiento
            cacheExtent: 300,
            separatorBuilder: (context, index) => const SizedBox(height: 20),
            itemBuilder: (context, index) {
              return LayoutBuilder(
                builder: (context, constraints) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: constraints.maxWidth > 800 ? 20 : 10,
                    ),
                    child: FutureBuilder<Widget>(
                      future: _loadWidgetData(index, context, screenWidth),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const LoadingPlaceholder();
                        }
                        return snapshot.data ?? const SizedBox.shrink();
                      },
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
