//para poder ocupar este archvio desde la otra ruta

part of 'usuario_cubit.dart';

@immutable
abstract class UsuarioState {}

class UsuarioInitial extends UsuarioState {
  final exiteUsuario = false;

  // @override
  // String toString() {
  //   return 'UsiarioInicial: exiteUsuario: false';
  // }
}

class UsuarioActivo extends UsuarioState {
  final exiteUsuario = true;
  final Usuario usuario;

  UsuarioActivo(this.usuario);
}
