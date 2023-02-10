import 'package:estados/pages/pag1.dart';
import 'package:estados/pages/pag2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 @override 
 Widget build(BuildContext context){
  return MaterialApp(
debugShowCheckedModeBanner: false,
title: 'Material',
initialRoute: 'pagina1',
routes: {
  'pagina1' :(_) => Pagina1(),
  'pagina2' :(_) => Pagina2(),
},
  );
 }
}

