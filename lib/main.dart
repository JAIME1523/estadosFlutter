import 'package:estados/pages/pagina1_page.dart';
import 'package:estados/pages/pagina2_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: 'pagina1',
      debugShowCheckedModeBanner: false,
      routes: {
        'pagina1': (_) => const Pagina1Page(),
        'pagina2': (_) => const Pagina2Page(),
      },
    );
  }
}
