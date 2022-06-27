import 'package:estados/bloc/usuario/usuario_cubit.dart';
import 'package:estados/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Pagina2Page extends StatelessWidget {
  const Pagina2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  final usuarioCubit = context.read<UsuarioCubit>();
    return Scaffold(
      appBar: AppBar(
          title: const Center(
        child: Text('Pagina 2 '),
      )),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
              color: Colors.blue,
              child: const Text('Establecer Usuario',
                  style: TextStyle(
                    color: Colors.white,
                  )),
              onPressed: () {
                final newUser = Usuario(
                  nombre: 'Jaime',
                  edad: 25,
                  profeciones: [
                    'Flutter developer', 'Jugador profecional Free fire'
                  ],
                );
                usuarioCubit.seleccionarUsuario(newUser);
              }),
          MaterialButton(
              color: Colors.blue,
              child: const Text('Cambiar Edad',
                  style: TextStyle(
                    color: Colors.white,
                  )),
              onPressed: () {
                usuarioCubit.cambiarEdad(30);
              }),
          MaterialButton(
              color: Colors.blue,
              child: const Text('Añadir profecion',
                  style: TextStyle(
                    color: Colors.white,
                  )),
              onPressed: () {
                usuarioCubit.agregarProfecion();
              }),
        ],
      )),
    );
  }
}
