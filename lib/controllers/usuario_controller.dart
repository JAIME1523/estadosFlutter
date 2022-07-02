import 'package:estados/models/usuario.dart';
import 'package:get/get.dart';

class UsuarioController extends GetxController {
  var exiteUsuario = false.obs;
  var usuario = Usuario(profeciones: []).obs;

 int  get profecionesCount{
    return usuario.value.profeciones.length;
  }

  void cargarUsuario(Usuario user) {
    exiteUsuario.value = true;
    usuario.value = user;
  }

  void cambiarEdad(int edad) {
    usuario.update((val) {
      val!.edad = edad;
    });
  }

  void agregarProfecion(String profecion) {
    usuario.update((val) {
      val!.profeciones = [...val.profeciones, profecion];
    });
  }
}
