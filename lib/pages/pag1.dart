import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Pagina1 extends StatelessWidget {
  const Pagina1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('pagina 1')),
    body: InformacionUsuario(),
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.accessibility_new),
    onPressed: () => Navigator.pushNamed(context, 'pagina2'),
    ),
    );
  }
}
class InformacionUsuario extends StatelessWidget {
  
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
ListTile(title: Text('Nombre: ')),
ListTile(title: Text('Edad: ')),
Text('Profesiones', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
Divider(),
ListTile(title: Text('Profesion 1'),),
ListTile(title: Text('Profesion 1'),),
ListTile(title: Text('Profesion 1'),),
        ],),);
  }
}