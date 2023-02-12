import 'package:estados/models/usuario.dart';
import 'package:estados/services/usuarioService.dart';
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
          final nuevoUsuario = new Usuario(nombre: 'fernando', edad: 35, profesiones: []);
          usuarioService.cargarUsuario(nuevoUsuario);

        }),
        MaterialButton(
          child: Text(
            'Cambiar Edad', 
            style: TextStyle(
            color: Colors.white),),
          color: Colors.blue,
          onPressed: () {
            usuarioService.cambiarEdad(30);
          
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