import 'package:flutter/material.dart';

class Pagina1Page extends StatelessWidget {
  const Pagina1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Pagina 1 ')),
        ),
        body: const _InformacionUsuario(),
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
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Gneral',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Divider(),
            ListTile(
              title: Text('Nombre: '),
            ),
            ListTile(
              title: Text('Edad: '),
            ),
            Text('Profecion',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Divider(),
             ListTile(
              title: Text('Profecion1: '),
            ),
             ListTile(
              title: Text('Profecion1: '),
            ), ListTile(
              title: Text('Profecion1: '),
            ),
          ],
        ));
  }
}
