import 'package:flutter/material.dart';
import '../widgets/beneficios.dart';
import '../widgets/video_baluns.dart';
import '../widgets/price.dart';
import '../widgets/formulario.dart';
import '../widgets/mensaje.dart';
import '../widgets/llamada.dart' as llamada_widget;
import '../widgets/dvr.dart';
import '../widgets/garantia.dart';
import '../widgets/titulo.dart';
import '../widgets/encabezado.dart';
import '../widgets/purchase_button.dart';
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

  static const Duration _shortDelay = Duration(milliseconds: 50);
  static const int totalItems = 18;

  static const Map<int, bool> _heavyWidgets = {
    0: true, // Encabezado
    14: true, // Formulario
  };

  static final Map<int, Future<Widget>> _widgetCache = {};

  Future<Widget> _loadWidgetData(
      int index, BuildContext context, double screenWidth) async {
    if (_widgetCache.containsKey(index)) {
      return _widgetCache[index]!;
    }

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
          textoAdicional:
              'kit de 4 cámaras Full HD 1080p (2mpx) de HIKVISION con grabacion a 4 mpx lite, ideales para todo tipo de negocio, casa u oficina.',
          precio: '\$780.000',
        );
        break;
      case 1:
        widget = const Beneficios();
        break;
      case 2:
        widget = ProductDisplayWidget(
          config: ProductDisplayConfig(
            title: 'DVR iDS-7104HQHI-M1/S 4 Mpx Lite',
            imagePaths: [
              'assets/images/2.webp',
              'assets/images/IDS7104HQHIM1S(2).webp',
              'assets/images/3.webp',
              'assets/images/4.webp',
              'assets/images/5.webp',
              'assets/images/6.webp',
              'assets/images/7.webp',
              'assets/images/8.webp',
            ],
            description:
                'DVR AcuSense mini 1U H.265 de 4 canales 1080P con detección de movimiento avanzada (humanos y vehículos) '
                'y protección perimetral. Incluye compresión H.265 Pro+, soporte para cámaras IP de hasta 6 MP, '
                'y grabación en múltiples resoluciones hasta 4mpx Lite.',
            actionButton: const PurchaseButton(buttonText: '¡envio sin costo!'),
            autoPlayCarousel: false,
            aspectRatio: 1.5,
          ),
          padding: const EdgeInsets.all(16),
          constraints: const BoxConstraints(maxWidth: 1200),
        );
        break;
      case 3:
        widget = const Garantia(
          message:
              'Garantía de 1 año para cámaras de seguridad y video grabador (DVR).',
          backgroundColor:
              Color.fromARGB(164, 255, 0, 34), // O cualquier otro color
        );
        break;
      case 4:
        widget = ProductDisplayWidget(
          config: ProductDisplayConfig(
            title: 'DS-2CE56D0T-IRPF(C)',
            imagePaths: [
              'assets/images/9.webp',
              'assets/images/10.webp',
              'assets/images/11.webp',
              'assets/images/12.webp',
              'assets/images/13.webp',
              'assets/images/14.webp',
              'assets/images/15.webp',
              'assets/images/16.webp',
              'assets/images/17.webp',
              'assets/images/DS-2CE56D0T-IRPF(C).webp',
            ],
            description:
                '4 Cámaras Domo TURBOHD 1080p de HIKVISION con lente de 2.8 mm y visión nocturna inteligente EXIR de hasta 20 mts.\n\n',
            actionButton: const PurchaseButton(buttonText: '¡envio sin costo!'),
            autoPlayCarousel: false,
            aspectRatio: 1.5,
          ),
          padding: const EdgeInsets.all(16),
          constraints: const BoxConstraints(maxWidth: 1200),
        );
        break;
      case 5:
        widget = const Garantia(
          message: 'Garantía Limitada de 3 años para disco duro.',
          backgroundColor: Color.fromARGB(164, 255, 0, 34),
        );
        break;
      case 6:
        widget = ProductDisplayWidget(
          config: ProductDisplayConfig(
            title: 'Disco duro para videovigilancia WD Purple - 1 TB',
            imagePaths: [
              'assets/images/18.webp',
              'assets/images/19.webp',
              'assets/images/20.webp',
              'assets/images/21.webp',
              'assets/images/22.webp',
            ],
            description:
                'Disco duro WD Purple 1 TB para videovigilancia, grabación 24/7, tecnología AllFrame, velocidad 110 MB/s, interfaz SATA, caché 64 MB, soporta 64 cámaras.',
            actionButton: const PurchaseButton(buttonText: '¡envio sin costo!'),
            autoPlayCarousel: false,
            aspectRatio: 1.5,
          ),
          padding: const EdgeInsets.all(16),
          constraints: const BoxConstraints(maxWidth: 1200),
        );
        break;
      case 7:
        widget = const Garantia(
          message: 'Acesorios del Kit.',
          backgroundColor: Color.fromARGB(164, 255, 0, 34),
        );
        break;
      case 8:
        widget = Videobaluns(
          title: '4 Fuentes De Energia 12v - 1amp',
          description:
              'fuente de alimentación de AC 110- 240v, 12 voltios a 1 amperio de alta calidad, conector de alimentación de 2.1mm, con led indicador de funcionamiento, el articulo puede ser ligeramente distinto al de la foto.',
          imagePath: 'assets/images/23.webp',
        );
      case 9:
        widget = Videobaluns(
          title: '4 pares de Video baluns pasivos',
          description:
              'VIDEO BALUM TURBO 4 EN 1 transmisión de señales de video a través de cables UTP, señal clara y estable a larga distancia.',
          imagePath: 'assets/images/24.webp',
        );
        break;
      case 10:
        widget = Videobaluns(
          title: '4 pares de Borneras',
          description:
              '4 pares de borneras electricas para la conexión y distribución de energia de las camaras.',
          imagePath: 'assets/images/25.webp',
        );
      case 11:
        widget = Videobaluns(
          title: '100 mts de cable utp',
          description:
              'cable utp cat 5e en aleacion para interior inluidos en el kit.',
          imagePath: 'assets/images/26.webp',
        );
      case 12:
        widget = const Garantia(
          message: 'Paga en casa al recibir el producto.',
          backgroundColor: Color.fromRGBO(2, 3, 2, 1), // O cualquier otro color
        );
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
        widget = const llamada_widget.LlamadaButton();

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
        backgroundColor: const Color.fromRGBO(58, 77, 255, 0.959),
        title: const TituloWidget(
          tituloText: 'Servicio contra entrega + envio gratis!',
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return ListView.builder(
            itemCount: totalItems,
            cacheExtent: 1000.0,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: constraints.maxWidth > 800 ? 20 : 10,
                  vertical: 10,
                ),
                child: LazyLoadingWidget(
                  index: index,
                  loadWidget: () =>
                      _loadWidgetData(index, context, screenWidth),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

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
