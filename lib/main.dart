import 'package:flutter/material.dart';
import 'package:flutter_labs_dispmoviles_2026/models/game_view_model.dart';
import 'package:logger/logger.dart';
import 'package:flutter_labs_dispmoviles_2026/ui/screens/MineSweeperScreen.dart';
import 'package:flutter_labs_dispmoviles_2026/ui/screens/MenuScreen.dart';
import 'package:flutter_labs_dispmoviles_2026/ui/screens/HistoryScreen.dart';
import 'package:flutter_labs_dispmoviles_2026/ui/screens/AboutMe.dart';
import 'package:provider/provider.dart';
var logger = Logger();

void main() {
 logger.d('Iniciando la aplicación de Buscaminas'); // Debug 
 logger.i('Iniciando la aplicación de Buscaminas'); // Info 
 logger.w('Iniciando la aplicación de Buscaminas'); // Warning 
 logger.e('Iniciando la aplicación de Buscaminas'); // Error 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Buscaminas',
      theme: ThemeData( 
        colorScheme: ColorScheme.fromSeed( 
          seedColor: Colors.blue, primary: Colors.green, 
          secondary: Colors.red ), scaffoldBackgroundColor: const Color.fromARGB(255, 0, 255, 234), // Fondo por defecto de todas las pantallas 
          textTheme: const TextTheme( bodyMedium: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500), ), 
          useMaterial3: true),
      initialRoute: '/menu',
      routes: {
        '/menu': (context) => const MenuScreen(),
        '/game': (context) => ChangeNotifierProvider(create: (context) => GameViewModel() ,
        child: const MineSweeperScreen(),),
        '/history': (context) => const HistoryScreen(),
        '/about': (context) => const AboutmePage(),
      },
    );
    
  }
}