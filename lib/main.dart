import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Buscaminas',
      theme: ThemeData(

        colorScheme: .fromSeed(seedColor: Colors.red),
      ),
      home: const MineSweeperScreen(),
    );
    
  }
}


class MineSweeperScreen extends StatelessWidget {
  const MineSweeperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Buscaminas'),
        ),
        body: Center(
          child: Text('Hola, Bienvenido a Buscaminasaaaaaa!'),
        ),
      
    );
  }
}