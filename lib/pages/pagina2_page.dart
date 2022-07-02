import 'package:estados/controllers/usuario_controller.dart';
import 'package:estados/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Pagina2Page extends StatelessWidget {
  const Pagina2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // print(Get.arguments['nombre']);
    final ususarioCtrl = Get.find<UsuarioController>();

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
                ususarioCtrl.cargarUsuario(
                    Usuario(edad: 25, nombre: 'Jaime', profeciones: []));
              }),
          MaterialButton(
              color: Colors.blue,
              child: const Text('Cambiar Edad',
                  style: TextStyle(
                    color: Colors.white,
                  )),
              onPressed: () {
                ususarioCtrl.cambiarEdad(30);
                Get.snackbar('Actualizo', 'Se camnio la edad',
                    backgroundColor: Colors.white,
                    boxShadows: const [
                      BoxShadow(color: Colors.black38, blurRadius: 10)
                    ]);
              }),
          MaterialButton(
              color: Colors.blue,
              child: const Text('Añadir profecion',
                  style: TextStyle(
                    color: Colors.white,
                  )),
              onPressed: () {
                // ususarioCtrl.agregarProfecion("Profecion #${ususarioCtrl.usuario.value.profeciones.length}");
                ususarioCtrl.agregarProfecion(
                    "Profecion #${ususarioCtrl.profecionesCount + 1}");
              }),

                MaterialButton(
              color: Colors.blue,
              child: const Text('Cambiar tema',
                  style: TextStyle(
                    color: Colors.white,
                  )),
              onPressed: () {
                Get.changeTheme(Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
                Get.defaultDialog(title: 'Hola ');
                // Get.snackbar('Cambiar tema', 'Se camnio el tema',
                //     backgroundColor: Colors.white,
                //     boxShadows: const [
                //       BoxShadow(color: Colors.black38, blurRadius: 10)
                //     ]);
              }),
        ],
      )),
    );
  }
}
