import 'package:flutter/material.dart';
import 'package:flutter_labs_dispmoviles_2026/models/cell_model.dart';
import 'package:flutter_labs_dispmoviles_2026/ui/widgets/mineCell.dart';
import 'package:logger/web.dart';
class MineSweeperScreen extends StatefulWidget {
  
  const MineSweeperScreen({super.key});
  @override
  State<MineSweeperScreen> createState() => _MineSweeperScreenState();
}

class _MineSweeperScreenState extends State<MineSweeperScreen>{  
  
  late List<CellModel> _cells;
  final logger = Logger();
  
  @override
  void initState() {
    _cells = List.generate(64, (i) => CellModel(index: i)); 
    logger.i('Lifecycle: initState() - El estado ha sido creado.');
  }
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    logger.i('Lifecycle: didChangeDependencies() - Contexto listo o dependencias cambiadas.');
  }

  @override
  void didUpdateWidget(covariant MineSweeperScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    logger.w('Lifecycle: didUpdateWidget() - La configuración del widget ha cambiado.');
  }
  
  @override void dispose() { 
    logger.e('Lifecycle: dispose() - El estado se destruye. Liberando memoria.'); 
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?; // Definimos valores por defecto (Fallback) en caso de que lleguen nulos 
    final String difficulty = args?['difficulty'] ?? 'Desconocida';
    final int gridSize = args?['gridSize'] ?? 8; //

    return Scaffold(
        appBar: AppBar(  
          title: const Text('Buscaminas'),
        ),
        body: SafeArea(
          child: Column(
            children: [
            Image.asset('assets/images/min.png', height: 100, width: 100,),
             Container(
              height:60 ,
              color: Colors.grey[300],
              child: const Center(
                child: Text("Status: 349 segundos | Minas: 10 | Cuadros: 56",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.red),),
                ),
              ),
              Divider(height: 1,),
              Expanded(child: _gameBoard()),
              Text('Dificultad: $difficulty | Tamaño de cuadrícula: ${gridSize}x${gridSize}', style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),),
            ],
          ),
        ),

      
    );
  }
}

Widget _gameBoard(){
  return Center(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: AspectRatio(
        aspectRatio: 1.0,
        child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 8,
            mainAxisSpacing: 2,
            crossAxisSpacing: 2,
          ),
          itemCount: 64,
          itemBuilder: (context, index){
            return Minecell(index: index);
          }
        ),
      )
    )
  );
}