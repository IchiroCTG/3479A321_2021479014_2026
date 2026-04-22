import 'package:flutter/material.dart';
import 'package:flutter_labs_dispmoviles_2026/ui/widgets/mineCell.dart';
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