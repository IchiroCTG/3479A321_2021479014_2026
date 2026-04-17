import 'package:flutter/material.dart';

class Minecell extends StatelessWidget {
  final int index;
 const  Minecell({ 
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