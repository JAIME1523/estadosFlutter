// ignore_for_file: file_names

import 'package:estados/models/usuario.dart';
import 'package:flutter/foundation.dart';

class UsuarioService extends ChangeNotifier {
  Usuario? _usuario;

  Usuario get usuario => _usuario!;

  bool get existeUsuario => _usuario != null ? true : false;

  set usuario(Usuario user) {
    _usuario = user;
    notifyListeners();
  }

  void cambiarEdad(int edad) {
    if(_usuario != null){
      _usuario!.edad = edad;
    notifyListeners();

    }
  }

  void removerUsuario() {
    _usuario = null;
    notifyListeners();
  }

  void agregarProfecion(){
    if(_usuario != null){
      _usuario!.profeciones!.add('Profecion ${_usuario!.profeciones!.length +1 }');
    notifyListeners();

    }
  }
}
