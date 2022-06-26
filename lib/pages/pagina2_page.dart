import 'package:estados/models/usuario.dart';
import 'package:estados/services/usuario_service..dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Pagina2Page extends StatelessWidget {
  const Pagina2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              onPressed: () async {
                   final usuarioService =
                     Provider.of<UsuarioService>(context, listen: false);
                final newUser = 
                    Usuario(edad: 25, nombre: "Jaime vivar Hidalgo",profeciones: [] );
                    print(newUser.edad);
             
                usuarioService.usuario =  newUser;
              }),
          MaterialButton(
              color: Colors.blue,
              child: const Text('Cambiar Edad',
                  style: TextStyle(
                    color: Colors.white,
                  )),
              onPressed: () {}),
          MaterialButton(
              color: Colors.blue,
              child: const Text('Añadir profecion',
                  style: TextStyle(
                    color: Colors.white,
                  )),
              onPressed: () {}),
        ],
      )),
    );
  }
}
