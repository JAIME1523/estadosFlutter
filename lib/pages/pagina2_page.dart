import 'package:estados/bloc/user/user_bloc.dart';
import 'package:estados/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Pagina2Page extends StatelessWidget {
  const Pagina2Page({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final userBloc = BlocProvider.of<UserBloc>(context, listen: false);

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
                  profeciones: ['Full stack'],
                );
                BlocProvider.of<UserBloc>(context, listen: false)
                    .add(ActiviteUser(newUser));
              }),
          MaterialButton(
              color: Colors.blue,
              child: const Text('Cambiar Edad',
                  style: TextStyle(
                    color: Colors.white,
                  )),
              onPressed: () {
                userBloc.add(ChangeUserEge(30));
              }),
          MaterialButton(
              color: Colors.blue,
              child: const Text('Añadir profecion',
                  style: TextStyle(
                    color: Colors.white,
                  )),
              onPressed: () {
                userBloc.add(AddProfecion());
                //evento
              }),
        ],
      )),
    );
  }
}
