import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProductDisplayConfig {
  final String title;
  final List<String> imagePaths;
  final String description;
  final Widget? actionButton;
  final bool autoPlayCarousel;
  final Duration autoPlayInterval;
  final double aspectRatio;

  const ProductDisplayConfig({
    required this.title,
    required this.imagePaths,
    required this.description,
    this.actionButton,
    this.autoPlayCarousel = false,
    this.autoPlayInterval = const Duration(seconds: 3),
    this.aspectRatio = 1.5,
  });
}

class ProductDisplayWidget extends StatelessWidget {
  final ProductDisplayConfig config;
  final Function(int)? onImageTap;
  final EdgeInsetsGeometry? padding;
  final BoxConstraints? constraints;

  const ProductDisplayWidget({
    required this.config,
    this.onImageTap,
    this.padding,
    this.constraints,
    super.key,
  });

  void _showFullScreenImage(BuildContext context, int initialIndex) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FullScreenProductView(
          initialIndex: initialIndex,
          config: config,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    double titleFontSize = _getResponsiveFontSize(screenWidth, true);
    double descriptionFontSize = _getResponsiveFontSize(screenWidth, false);

    return Container(
      padding: padding,
      constraints: constraints,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      config.title,
                      style: TextStyle(
                        fontSize: titleFontSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Text(
                      config.description,
                      style: TextStyle(
                        fontSize: descriptionFontSize,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: screenWidth * 0.02),
              Expanded(
                child: Column(
                  children: [
                    ProductImageCarousel(
                      config: config,
                      onImageTap: (index) => _showFullScreenImage(context, index),
                    ),
                    if (config.actionButton != null) ...[
                      SizedBox(height: screenHeight * 0.1),
                      config.actionButton!,
                    ],
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  double _getResponsiveFontSize(double screenWidth, bool isTitle) {
    if (screenWidth < 600) {
      return screenWidth * (isTitle ? 0.06 : 0.03);
    } else if (screenWidth < 1200) {
      return screenWidth * (isTitle ? 0.04 : 0.05);
    }
    return screenWidth * (isTitle ? 0.03 : 0.04);
  }
}

class ProductImageCarousel extends StatelessWidget {
  final ProductDisplayConfig config;
  final Function(int) onImageTap;

  const ProductImageCarousel({
    required this.config,
    required this.onImageTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return CarouselSlider.builder(
      itemCount: config.imagePaths.length,
      itemBuilder: (BuildContext context, int index, int realIndex) {
        return GestureDetector(
          onTap: () => onImageTap(index),
          child: AspectRatio(
            aspectRatio: config.aspectRatio,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  config.imagePaths[index],
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: Icon(
                    Icons.zoom_in,
                    color: Colors.white,
                    size: screenWidth * 0.1,
                  ),
                ),
              ],
            ),
          ),
        );
      },
      options: CarouselOptions(
        autoPlay: config.autoPlayCarousel,
        autoPlayInterval: config.autoPlayInterval,
        enlargeCenterPage: true,
        aspectRatio: config.aspectRatio,
        viewportFraction: 0.8,
      ),
    );
  }
}

class FullScreenProductView extends StatelessWidget {
  final int initialIndex;
  final ProductDisplayConfig config;

  const FullScreenProductView({
    required this.initialIndex,
    required this.config,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          CarouselSlider.builder(
            itemCount: config.imagePaths.length,
            itemBuilder: (BuildContext context, int index, int realIndex) {
              return Center(
                child: InteractiveViewer(
                  panEnabled: true,
                  boundaryMargin: const EdgeInsets.all(20),
                  minScale: 1,
                  maxScale: 5,
                  child: Image.asset(
                    config.imagePaths[index],
                    fit: BoxFit.contain,
                    width: screenWidth,
                    height: screenHeight,
                  ),
                ),
              );
            },
            options: CarouselOptions(
              initialPage: initialIndex,
              enableInfiniteScroll: false,
              autoPlay: false,
              enlargeCenterPage: false,
              aspectRatio: screenWidth / screenHeight,
              viewportFraction: 1.0,
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Text(
              config.description,
              style: TextStyle(
                color: Colors.white,
                fontSize: screenWidth * 0.04,
                backgroundColor: Colors.black54,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: IconButton(
              icon: Icon(
                Icons.close,
                color: Colors.white,
                size: screenWidth * 0.08,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
        ],
      ),
    );
  }
}