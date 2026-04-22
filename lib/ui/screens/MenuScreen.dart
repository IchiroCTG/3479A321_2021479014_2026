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
      persistentFooterButtons: [
        ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, '/history'),
          child: Text('Historial'),
        ),
        ElevatedButton(onPressed: ()=> Navigator.pushNamed(context, '/game'), 
        child: Text('Juego')),
        ElevatedButton(onPressed: ()=> Navigator.pushNamed(context, '/about'), 
        child: Text('Acerca de'))
      ],
        
      
    );
  } 
}