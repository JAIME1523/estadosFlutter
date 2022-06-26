import 'package:estados/models/usuario.dart';
import 'package:flutter/foundation.dart';

class UsuarioService extends ChangeNotifier {
   Usuario _usuario =  Usuario();

  Usuario get usuario => _usuario;

  bool get existeUsuario => _usuario != null ? true : false;

  set usuario(Usuario user) {
    _usuario = user;
    notifyListeners();
  }
}
