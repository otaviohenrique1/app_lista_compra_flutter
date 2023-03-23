import 'package:app_lista_compra_flutter/pages/header.dart';
import 'package:flutter/material.dart';
import 'package:app_lista_compra_flutter/styles/globalstyle.dart';
import 'package:app_lista_compra_flutter/components/itemlista.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    String nome = "Leite";
    num quantidade = 30;
    String unidade = "un";

    return Scaffold(
      appBar: const Header(titulo: "Lista"),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: <Widget>[
            ItemLista(nome: nome, quantidade: quantidade, unidade: unidade),
            ItemLista(nome: nome, quantidade: quantidade, unidade: unidade),
            ItemLista(nome: nome, quantidade: quantidade, unidade: unidade),
            ItemLista(nome: nome, quantidade: quantidade, unidade: unidade),
            ItemLista(nome: nome, quantidade: quantidade, unidade: unidade),
            ItemLista(nome: nome, quantidade: quantidade, unidade: unidade),
            ItemLista(nome: nome, quantidade: quantidade, unidade: unidade),
            ItemLista(nome: nome, quantidade: quantidade, unidade: unidade),
            ItemLista(nome: nome, quantidade: quantidade, unidade: unidade),
            ItemLista(nome: nome, quantidade: quantidade, unidade: unidade),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Adicionar',
        backgroundColor: globalStyleColors["azul"],
        shape: const CircleBorder(),
        child: const Icon(Icons.add, color: Colors.white, size: 32),
      ),
    );
  }
}

/*
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
*/