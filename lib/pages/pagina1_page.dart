import 'package:estados/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:estados/bloc/user/user_bloc.dart';

class Pagina1Page extends StatelessWidget {
  const Pagina1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Pagina 1 ')),
          actions: [
            IconButton(onPressed: () {
              BlocProvider.of<UserBloc>(context, listen: false).add(DeleteUser());
            }, icon: const Icon(Icons.delete))
          ],
        ),
        body: BlocBuilder<UserBloc, UserState>(
          builder: (_, state) {
            return state.existUser
                ? _InformacionUsuario(
                    user: state.user!,
                  )
                : const Center(child: Text('No hay usuario seleccionado'));
          },
        ),

        // const _InformacionUsuario(),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.accessibility_new),
          onPressed: () {
            Navigator.pushNamed(context, 'pagina2');
          },
        ));
  }
}

class _InformacionUsuario extends StatelessWidget {
  const _InformacionUsuario({
    Key? key,
    required this.user,
  }) : super(key: key);

  final Usuario user;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(parent: BouncingScrollPhysics()),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Gneral',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const Divider(),
              ListTile(
                title: Text('Nombre: ${user.edad} '),
              ),
              ListTile(
                title: Text('Edad: ${user.edad}'),
              ),
              const Text('Profecion',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const Divider(),
              ...user.profeciones
                  .map((e) => ListTile(
                        title: Text(e),
                      ))
                  .toList()
            ],
          ),
        ));
  }
}
