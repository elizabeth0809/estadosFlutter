
import 'dart:async';

import 'package:estados/models/usuario.dart';

class _UsuarioService{
  late Usuario _usuario;
  //esto guarda la informacion la redibuja manteniendo el estado
  StreamController<Usuario> _usuariosStreamController = new StreamController<Usuario>();
  Stream<Usuario> get usuarioStream => _usuariosStreamController.stream;
  Usuario get usuario => this._usuario;
  bool get existeUsuario => (this._usuario != null) ? true : false;

  void cargarUsuario(Usuario user){
    this._usuario = user;
    //aqui despues de obtener los datos los mantiene en el stream
    this._usuariosStreamController.add(user);
  }
  void cambiarEdad(int edad){
    this._usuario.edad = edad;
    this._usuariosStreamController.add(this._usuario);
  }
}
final usuarioService = new _UsuarioService();