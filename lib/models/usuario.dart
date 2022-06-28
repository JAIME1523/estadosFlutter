class Usuario {
  String nombre;
  int edad;
  List<String> profeciones;

  Usuario(
      {required this.nombre, required this.edad, required this.profeciones});

  Usuario copyWhith({
    String? nombre,
    int? edad,
    List<String>? profeciones,
  }) =>
      Usuario(
          nombre: nombre ?? this.nombre,
          edad: edad ?? this.edad,
          profeciones: profeciones ?? this.profeciones);
}
