import 'package:flutter/material.dart';



class Minecell extends StatelessWidget {
  final int index;
 const  Minecell({ 
    Key? key, 
    required  this .index,  // Parámetro obligatorio  en el constructor 
  }) :  super (key: key); 

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context); // Obtener el tema actual para usar sus colores y estilos
    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.secondary, // Usa el color de fondo del tema 
        border: Border.all(color: theme.colorScheme.outline, width: 1.5),
      ),
      child: Center( child: Image.asset( 'assets/icons/icono.png', 
                    width: 64, height: 64, fit: BoxFit.contain, ), ),
    );
  }
}