import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:logger/logger.dart';
import 'pages/home_page.dart'; // Importar HomePage
import 'pages/kit_8_camaras/pages_kit_8/kit_82ce56d0t.dart'; // Importar Kit8Page con la nueva ruta

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
  logger.i('Aplicación iniciada');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi App de Cámaras de Seguridad',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/', // Ruta inicial
      routes: {
        '/': (context) => const HomePage(), // Página principal
        '/kit_8': (context) => const Kit8Page(), // Página del kit 8
      },
    );
  }
}
