import 'package:estados/models/usuario.dart';
import 'package:estados/services/usuario_service..dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Pagina1Page extends StatelessWidget {
  const Pagina1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final usuarioService = Provider.of<UsuarioService>(context);
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Pagina 1 ')),
        ),
        body: usuarioService.existeUsuario
            ?  _InformacionUsuario(usuario: usuarioService.usuario,)
            : const Center(
                child: Text('No hay usuario seleccionado'),
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
  const _InformacionUsuario({
    Key? key, required this.usuario,
  }) : super(key: key);
final Usuario usuario ;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Text('Gneral',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Divider(),
            ListTile(
              title: Text('Nombre: ${usuario.nombre} '),
            ),
            ListTile(
              title: Text('Edad: ${usuario.edad}'),
            ),
            Text('Profecion',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Divider(),
            ListTile(
              title: Text('Profecion1: '),
            ),
            ListTile(
              title: Text('Profecion1: '),
            ),
            ListTile(
              title: Text('Profecion1: '),
            ),
          ],
        ));
  }
}
