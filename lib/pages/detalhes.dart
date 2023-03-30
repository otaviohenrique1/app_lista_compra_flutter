import 'package:app_lista_compra_flutter/pages/edicao.dart';
import 'package:flutter/material.dart';
import 'package:app_lista_compra_flutter/pages/itemdetalhes.dart';
import 'package:app_lista_compra_flutter/components/botao.dart';
import 'package:app_lista_compra_flutter/components/header.dart';
import 'package:app_lista_compra_flutter/styles/globalstyle.dart';
import 'package:app_lista_compra_flutter/utils/lista.dart';

class Detalhes extends StatefulWidget {
  const Detalhes({super.key});

  @override
  State<Detalhes> createState() => _DetalhesState();
}

class _DetalhesState extends State<Detalhes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(
        titulo: "Lista",
        botaoBusca: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            ItemDetalhes(
              titulo: "Nome:",
              descricao: produtos[1]["nome"],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: ItemDetalhes(
                titulo: "Quantidade:",
                descricao: produtos[1]["quantidade"].toString(),
              ),
            ),
            ItemDetalhes(
              titulo: "Unidade:",
              descricao: produtos[1]["unidade"],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: Botao(
                backgroundColor: globalStyleColors["azul"],
                label: "Editar",
                fontColor: Colors.white,
                fontSize: 20,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Edicao()),
                  );
                },
              ),
            ),
          ],
        ),
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
