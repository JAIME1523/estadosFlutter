// ignore_for_file: depend_on_referenced_packages

import 'package:estados/models/usuario.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//cobinacion de dos coumentos
part 'usuarios_state.dart';

class UsuarioCubit extends Cubit<UsuarioState> {
  UsuarioCubit() : super(UsuarioInitial());

  void seleccionarUsuario(Usuario user) {
    emit(UsuarioActivo(user));
  }

  void cambiarEdad(int edad) {
    final currenState = state;
    if (currenState is UsuarioActivo) {
      final newUser = currenState.usuario.copyWhith(edad: edad);
      emit(UsuarioActivo(newUser));
    }
  }

  void agregarProfecion() {
    List<String> nuevalista = [];

    final currenState = state;
    if (currenState is UsuarioActivo) {
      /*
      final newProfesiones =[
        ...currenState.usuario.profeciones
        'Profecion ${nuevalista.length + 1}'
      ]
      */
      nuevalista = currenState.usuario.profeciones!;

      nuevalista.add('Profecion ${nuevalista.length + 1}');

      final newUser = currenState.usuario.copyWhith(profeciones: nuevalista);
      emit(UsuarioActivo(newUser));
    }
  }

  void borrarUser(){
    final currenState = state;
    if (currenState is UsuarioActivo) {
   

      emit(UsuarioInitial());
    }
  }
}
