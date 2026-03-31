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
            return _mineCell(index:index);
          }
        ),
      )
    )
  );
}

class _mineCell extends StatelessWidget {
  final int index;
 const  _mineCell({ 
    Key? key, 
    required  this .index,  // Parámetro obligatorio  en el constructor 
  }) :  super (key: key); 

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[400],
        border: Border.all(color: Colors.grey[600]!, width: 1.5),
      )
    );
  }
}

