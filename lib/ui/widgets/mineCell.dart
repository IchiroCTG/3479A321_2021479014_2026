import 'package:flutter/material.dart';
import 'package:flutter_labs_dispmoviles_2026/models/cell_model.dart';


class Minecell extends StatelessWidget {
  final CellModel cell;
  final VoidCallback onTap;
 const  Minecell({ 
    Key? key, 
    required  this.cell,
    required this.onTap,// Parámetro obligatorio  en el constructor 
  }) :  super (key: key); 

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context); // Obtener el tema actual para usar sus colores y estilos
    return GestureDetector(
      onTap: onTap,
      child:  Container(
        decoration: BoxDecoration(
          color: theme.colorScheme.secondary, // Usa el color de fondo del tema 
          border: Border.all(color: theme.colorScheme.outline, width: 1.5),
        ),
        child: Center( child: cell.isRevealed? Image.asset( 'assets/icons/icono.png', width: 64, height: 64,): const SizedBox.shrink(),
          ),
        ),
    );
  }
}