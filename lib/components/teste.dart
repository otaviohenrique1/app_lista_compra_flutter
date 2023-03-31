import 'package:flutter/material.dart';
import 'package:app_lista_compra_flutter/pages/login.dart';
import 'package:app_lista_compra_flutter/components/header.dart';

class Teste extends StatefulWidget {
  const Teste({super.key});

  @override
  State<Teste> createState() => _TesteState();
}

class _TesteState extends State<Teste> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(
        titulo: "Teste",
        botaoBusca: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: TextButton(
            child: const Text("Abrir"),
            onPressed: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: const Text('Aviso!'),
                content: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Deseja sair do aplicativo?'),
                  ],
                ),
                icon: const Icon(
                  Icons.warning_amber_rounded,
                  size: 64,
                ),
                iconColor: Colors.red,
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'Cancel'),
                    child: const Text('Não'),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context, 'OK');
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const Login()),
                      );
                    },
                    child: const Text('Sim'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
