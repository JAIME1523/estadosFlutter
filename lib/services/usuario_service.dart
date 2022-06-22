import 'dart:async';

import 'package:estados/models/usuario.dart';

class _UsuarioService {
  Usuario? _usuario;

  final StreamController<Usuario> _usarioStreamController =
      StreamController<Usuario>.broadcast();

  Usuario? get usuario => _usuario;

  bool get existeUSuario => (_usuario != null) ? true : false;

  Stream<Usuario> get usuarioStream => _usarioStreamController.stream;

  cambiarEdad(int edad) {
    _usarioStreamController.add(_usuario!);

    _usuario?.edad = edad;
  }

  void cargarUsuario(Usuario user) {
    _usarioStreamController.add(user);

    _usuario = user;
  }

  dispose() {
    _usarioStreamController.close();
  }
}

/*
todos los lugares donde ocupemos nuestra usuarioService va utilizar la misma instancia 
*/
final usuarioService = _UsuarioService();
