import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Pagina2 extends StatelessWidget {
  const Pagina2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('pagina 2')),
      body: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, 
      children: [
        MaterialButton(
          child: Text(
            'Establecer usuario', 
            style: TextStyle(
            color: Colors.white),),
          color: Colors.blue,
          onPressed: () {
          
        }),
        MaterialButton(
          child: Text(
            'Cambiar Edad', 
            style: TextStyle(
            color: Colors.white),),
          color: Colors.blue,
          onPressed: () {
          
        }),
        MaterialButton(
          child: Text(
            'Añadir profesion', 
            style: TextStyle(
            color: Colors.white),),
          color: Colors.blue,
          onPressed: () {
          
        }),
      ],),),
    );
  }
}