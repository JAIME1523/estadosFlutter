class Usuario {
  String? nombre;
  int? edad;
  List<String>? profeciones;

  Usuario({this.nombre, this.edad, this.profeciones});


//copyWhith == copiarUsuario
  copyWhith({String? nombre, int? edad, List<String>? profeciones}) {
    return Usuario(
        nombre: nombre ?? this.nombre,
        edad: edad ?? this.edad,
        profeciones: profeciones ?? this.profeciones);
  }
}
