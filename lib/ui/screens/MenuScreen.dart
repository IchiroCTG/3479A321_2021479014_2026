import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget { 
  const MenuScreen({Key? key}) : super(key: key); 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      appBar: AppBar(title: const Text('Menú (Maqueta)')),
      body: const Center(
        child: Text('Aquí irá el menu principal.'), 
      ),
      floatingActionButton: ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: Text('Go Back'),
        ),
    );
  } 
}