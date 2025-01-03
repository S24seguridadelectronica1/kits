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
import 'package:visibility_detector/visibility_detector.dart';


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

  // Constantes para optimización
  static const Duration _shortDelay = Duration(milliseconds: 50);
  static const int totalItems = 18;
  
  // Identificar widgets pesados
  static const Map<int, bool> _heavyWidgets = {
    0: true,  // Encabezado
    14: true, // Formulario
  };

  // Cache de widgets
  static final Map<int, Future<Widget>> _widgetCache = {};

  Future<Widget> _loadWidgetData(
      int index, BuildContext context, double screenWidth) async {
    // Retornar del cache si existe
    if (_widgetCache.containsKey(index)) {
      return _widgetCache[index]!;
    }

    // Aplicar delay solo a widgets pesados
    if (_heavyWidgets[index] ?? false) {
      await Future.delayed(_shortDelay);
    }

    Widget widget;
    switch (index) {
      case 0:
        widget = Encabezado(
          titulo: 'solo para Bucaramanga y el área metropolitana',
          imagePath: 'assets/images/1.webp',
          descripcion: 'tecnologia acusense deteccion humanos y vehiculos!',
          textoAdicional: 'kit de 4 cámaras Full HD 1080p (2mpx) de HIKVISION con grabacion a 4 mpx lite, ideales para todo tipo de negocio, casa u oficina.',
          precio: '\$199.99',
        );
        break;
      case 1:
        widget = const Beneficios();
        break;
      case 2:
        widget = const DvrWidget();
        break;
      case 3:
        widget = const Garantia();
        break;
      case 4:
        widget = const CamarasWidget();
        break;
      case 5:
        widget = const GarantiaDiscoDuro();
        break;
      case 6:
        widget = const DiscoDuroWidget();
        break;
      case 7:
        widget = const AccesoriosDelKit();
        break;
      case 8:
        widget = const FuentesDeEnergia();
        break;
      case 9:
        widget = const Videobaluns();
        break;
      case 10:
        widget = const Borneras();
        break;
      case 11:
        widget = const Cable();
        break;
      case 12:
        widget = const PagueEnCasa();
        break;
      case 13:
        widget = const Price();
        break;
      case 14:
        widget = const FormularioWidget();
        break;
      case 15:
        widget = const MensajeButton();
        break;
      case 16:
        widget = const LlamadaButton();
        break;
      case 17:
        widget = ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/kit_8');
          },
          child: const Text('Ir al Kit 8'),
        );
        break;
      default:
        widget = const SizedBox.shrink();
    }

    final future = Future.value(widget);
    _widgetCache[index] = future;
    return future;
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(33, 55, 255, 0.588),
        title: const TituloWidget(
          tituloText: 'Servicio contra entrega + envio gratis!',
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return ListView.builder( // Cambiado a ListView.builder
            itemCount: totalItems,
            cacheExtent: 1000.0, // Aumentado para mejor scrolling
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: constraints.maxWidth > 800 ? 20 : 10,
                  vertical: 10,
                ),
                child: LazyLoadingWidget(
                  index: index,
                  loadWidget: () => _loadWidgetData(index, context, screenWidth),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

// Nuevo widget para manejar lazy loading
class LazyLoadingWidget extends StatefulWidget {
  final int index;
  final Future<Widget> Function() loadWidget;

 const LazyLoadingWidget({
  super.key,
  required this.index,
  required this.loadWidget,
});


  @override
  State<LazyLoadingWidget> createState() => _LazyLoadingWidgetState();
}

class _LazyLoadingWidgetState extends State<LazyLoadingWidget> {
  late Future<Widget> _widgetFuture;
  bool _isVisible = false;

  @override
  void initState() {
    super.initState();
    _widgetFuture = widget.loadWidget();
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key('lazy-widget-${widget.index}'),
      onVisibilityChanged: (info) {
        if (info.visibleFraction > 0 && !_isVisible) {
          setState(() => _isVisible = true);
        }
      },
      child: _isVisible
          ? FutureBuilder<Widget>(
              future: _widgetFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const LoadingPlaceholder();
                }
                return snapshot.data ?? const SizedBox.shrink();
              },
            )
          : const SizedBox(height: 200),
    );
  }
}