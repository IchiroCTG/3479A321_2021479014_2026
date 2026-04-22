import 'package:flutter/material.dart';
import 'package:flutter_labs_dispmoviles_2026/models/game_result.dart';

class HistoryScreen extends StatelessWidget { 
  const HistoryScreen({Key? key}) : super(key: key); 
  
  @override 
  Widget build(BuildContext context) { 
    final GameResult game = GameResult(date: '2024-06-01', timeSpent: '5m 30s', isVictory: false); // Datos de ejemplo para mostrar en la maqueta
    return Scaffold( 
      appBar: AppBar(title: const Text('Historial (Maqueta)')),
      body: Center(
        child: Card(
          color: game.isVictory ? Colors.green[100] : Colors.red[100],
          elevation: 4,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Fecha: ${game.date}'), Text('Tiempo: ${game.timeSpent}')
              ],
            )
          )
        ),
      )
    );
  } 
}