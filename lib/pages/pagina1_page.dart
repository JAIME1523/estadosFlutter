import 'package:estados/models/usuario.dart';
import 'package:flutter/material.dart';

import '../services/usuario_service.dart';

class Pagina1Page extends StatelessWidget {
  const Pagina1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Pagina 1 ')),
        ),
        body: StreamBuilder(
          stream: usuarioService.usuarioStream,
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            return snapshot.hasData
                ? _InformacionUsuario(
                    usuario: usuarioService.usuario!,
                  )
                : const Center(
                    child: Text('NO HAY INFO DEL USUARIO'),
                  );
          },
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.accessibility_new),
          onPressed: () {
            Navigator.pushNamed(context, 'pagina2');
          },
        ));
  }
}

class _InformacionUsuario extends StatelessWidget {
  final Usuario usuario;

  const _InformacionUsuario({
    Key? key,
    required this.usuario,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Gneral',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const Divider(),
            ListTile(
              title: Text('Nombre: ${usuario.nombre}'),
            ),
            ListTile(
              title: Text('Edad:${usuario.edad} '),
            ),
            const Text('Profecion',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const Divider(),
            const ListTile(
              title: Text('Profecion1: '),
            ),
            const ListTile(
              title: Text('Profecion1: '),
            ),
            const ListTile(
              title: Text('Profecion1: '),
            ),
          ],
        ));
  }
}
