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
        body: SafeArea(
          child: Column(
            children: [
             Container(
              height:60 ,
              color: Colors.grey[300],
              child: const Center(
                child: Text("Status: 349 segundos | Minas: 10 | Cuadros: 56",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.red),),
                ),
              ),
              Divider(height: 1,),
              Expanded(child: Text("Aquí va el tablero de juego",style: TextStyle(fontSize: 18, color: Colors.grey),))
            ],
          ),
        ),

      
    );
  }
}