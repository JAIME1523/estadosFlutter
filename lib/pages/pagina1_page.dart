import 'package:estados/controllers/usuario_controller.dart';
import 'package:estados/models/usuario.dart';
import 'package:estados/pages/pagina2_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Pagina1Page extends StatelessWidget {
  const Pagina1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //importar el controllador
    final usuarioCtrl = Get.put(UsuarioController());
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Pagina 1 ')),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.exit_to_app))
          ],
        ),
        body: Obx(() => usuarioCtrl.exiteUsuario.value
            ? _InformacionUsuario(
                user: usuarioCtrl.usuario.value,
              )
            : const NoInfo()),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.accessibility_new),
          onPressed: () {
            // Navigator.pushNamed(context, 'pagina2');
            // Get.to(const Pagina2Page());
            Get.to(() => const Pagina2Page());
            // Get.toNamed('pagina2', arguments: {'nombre':'jaime', 'edad': 25});
          },
        ));
  }
}

class NoInfo extends StatelessWidget {
  const NoInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('No hay usuario seleccionado'),
    );
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
          physics:const  BouncingScrollPhysics(parent: BouncingScrollPhysics()),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('General',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const Divider(),
              ListTile(
                title: Text('Nombre: ${user.nombre}'),
              ),
              ListTile(
                title: Text('Edad: ${user.edad}'),
              ),
              const Text('Profecion',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const Divider(),
              
              ...user.profeciones.map((e) => ListTile(title: Text(e)))
            ],
          ),
        ));
  }
}
