import 'dart:html';

import 'package:estados/models/usuario.dart';
import 'package:estados/services/usuarioService.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Pagina1 extends StatelessWidget {
  const Pagina1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('pagina 1')),
    body: 
    // se redibujara cada vez que haya un nuevo valor
    StreamBuilder(
      stream: usuarioService.usuarioStream,
      
      builder: (BuildContext context, AsyncSnapshot<Usuario> snapshot) {
        //aqui pregunta si posee informacion
       return snapshot.hasData
       ? InformacionUsuario(usuario: usuarioService.usuario) 
       : Center(child: Text('no hay informacion'),);
      },
    ),
      floatingActionButton: FloatingActionButton(
      child: Icon(Icons.accessibility_new),
    onPressed: () => Navigator.pushNamed(context, 'pagina2'),
    ),
    );
  }
}
class InformacionUsuario extends StatelessWidget {
  final Usuario usuario;

  const InformacionUsuario({ required this.usuario});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, 
      height: double.infinity, 
      padding: EdgeInsets.all(20.0), 
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, 
        children: [
Text('General', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
Divider(),
ListTile(title: Text('Nombre: ${usuario.nombre}')),
ListTile(title: Text('Edad: ${usuario.edad}')),
Text('Profesiones', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
Divider(),
ListTile(title: Text('Profesion 1'),),
ListTile(title: Text('Profesion 1'),),
ListTile(title: Text('Profesion 1'),),
        ],),);
  }
}