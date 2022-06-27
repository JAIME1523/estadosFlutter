import 'package:estados/bloc/usuario/usuario_cubit.dart';
import 'package:estados/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Pagina1Page extends StatelessWidget {
  const Pagina1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Pagina 1 ')),
          actions: [
            IconButton(onPressed: () {
              context.read<UsuarioCubit>().borrarUser();

            }, icon: const Icon(Icons.exit_to_app))
          ],
        ),
        body: const _BodyScaffold(),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.accessibility_new),
          onPressed: () {
            Navigator.pushNamed(context, 'pagina2');
          },
        ));
  }
}

class _BodyScaffold extends StatelessWidget {
  const _BodyScaffold({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UsuarioCubit, UsuarioState>(
      builder: (_, state) {
        switch (state.runtimeType) {
          case UsuarioInitial:
            return const Center(
              child: Text('No hay informacion del usuario'),
            );
          // break;

          case UsuarioActivo:
            return _InformacionUsuario(
                usuario: (state as UsuarioActivo).usuario);

          // break;

          default:
            return const Center(
              child: Text('Estado no reconcido'),
            );
        }

        // if (state is UsuarioInitial) {
        //   return const Center(
        //     child: Text('No hay informacion del usuario'),
        //   );
        // } else if (state is UsuarioActivo) {
        //   return _InformacionUsuario(
        //     usuario: state.usuario,
        //   );
        // } else {
        //   return const Center(
        //     child: Text('Estado no reconcido'),
        //   );
        // }
      },
    );
  }
}

class _InformacionUsuario extends StatelessWidget {
  const _InformacionUsuario({
    Key? key,
    required this.usuario,
  }) : super(key: key);
  final Usuario usuario;

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
                title: Text('Nombre: ${usuario.nombre} '),
              ),
              ListTile(
                title: Text('Edad: ${usuario.edad}'),
              ),
              const Text('Profecion',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const Divider(),
              ...usuario.profeciones!
                  .map((e) => ListTile(title: Text(e)))
                  .toList()
            ],
          ),
        ));
  }
}
