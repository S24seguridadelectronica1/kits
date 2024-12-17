import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:logger/logger.dart';
import 'description_widget.dart'; // Importar el nuevo widget

// Instancia de logger
var logger = Logger();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://lkwdiodhcjapfqxnbuxy.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imxrd2Rpb2RoY2phcGZxeG5idXh5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjY2NzM5ODcsImV4cCI6MjA0MjI0OTk4N30.F-XZ9jVs5DckvgJzVXWTRB4HTEoleIr7Gk2mL_Ez-4g',
  );

  runApp(const MyApp());
  logger.i('Aplicación iniciada'); // Información de inicio de la aplicación
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kit de cámaras de seguridad',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Kit de cámaras de seguridad'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 800) {
              // Diseño para pantallas grandes
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/1.png',
                    width: screenWidth * 0.3,
                    height: screenWidth * 0.3,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                      child: DescriptionWidget(
                          fontSizeTitle: 42, fontSizeText: 18)),
                ],
              );
            } else {
              // Diseño para pantallas pequeñas
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/1.png',
                    width: screenWidth * 0.7,
                    height: screenWidth * 0.7,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 20),
                  DescriptionWidget(fontSizeTitle: 32, fontSizeText: 16),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
