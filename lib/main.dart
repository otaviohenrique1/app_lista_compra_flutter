import 'package:flutter/material.dart';
import 'package:app_lista_compra_flutter/pages/login.dart';
// import 'package:app_lista_compra_flutter/styles/globalstyle.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: globalStyleColors["azul"]),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Login(),
    );
  }
}
