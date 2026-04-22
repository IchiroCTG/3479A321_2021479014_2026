import 'package:flutter/material.dart';
import 'package:flutter_labs_dispmoviles_2026/models/game_result.dart';

class HistoryScreen extends StatelessWidget { 
  const HistoryScreen({Key? key}) : super(key: key); 
  
  @override 
  Widget build(BuildContext context) { 
    final List<GameResult> gameHistory = [ 
      GameResult(date: '2024-06-01', timeSpent: '5m 30s', isVictory: true, difficulty: 'easy'), 
      GameResult(date: '2024-06-02', timeSpent: '3m 45s', isVictory: false, difficulty: 'medium'),
      GameResult(date: '2024-06-03', timeSpent: '4m 15s', isVictory: true, difficulty: 'hard'),
      GameResult(date: '2024-06-04', timeSpent: '3m 15s', isVictory: false, difficulty: 'medium'),
      GameResult(date: '2024-06-05', timeSpent: '5m 30s', isVictory: true, difficulty: 'easy'), 
      GameResult(date: '2024-06-06', timeSpent: '3m 45s', isVictory: false, difficulty: 'hard'),
      GameResult(date: '2024-06-07', timeSpent: '4m 15s', isVictory: true, difficulty: 'hard'),
      GameResult(date: '2024-06-08', timeSpent: '3m 15s', isVictory: false, difficulty: 'medium'),
    ]; // Datos de ejemplo para mostrar en el historial, en una aplicación real esto vendría de una base de datos o almacenamiento local
    return Scaffold( 
      appBar: AppBar(title: const Text('Historial (Maqueta)')),
      body: ListView.builder(
        itemCount: gameHistory.length,
        itemBuilder: (context, index) {
          final result = gameHistory[index];
          return ListTile(
            leading: Icon(result.isVictory ? Icons.check_circle : Icons.cancel, color: result.isVictory ? Colors.green : Colors.red),
            title: Text('Fecha: ${result.date} - Dificultad: ${result.difficulty}'),
            subtitle: Text('Tiempo: ${result.timeSpent}'),
            
          );
        },
      ),
    );
  } 
}