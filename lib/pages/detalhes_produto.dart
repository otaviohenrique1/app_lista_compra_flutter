import 'package:flutter/material.dart';
import 'package:app_lista_compra_flutter/components/item_detalhes.dart';
import 'package:app_lista_compra_flutter/pages/edicao_produto.dart';
import 'package:app_lista_compra_flutter/utils/formatadores.dart';
import 'package:app_lista_compra_flutter/components/botao.dart';
import 'package:app_lista_compra_flutter/components/header.dart';
import 'package:app_lista_compra_flutter/styles/globalstyle.dart';
import 'package:app_lista_compra_flutter/utils/lista.dart';

class DetalhesProduto extends StatefulWidget {
  const DetalhesProduto({
    super.key,
    required this.id,
  });

  final int id;

  @override
  State<DetalhesProduto> createState() => _DetalhesProdutoState();
}

class _DetalhesProdutoState extends State<DetalhesProduto> {
  @override
  Widget build(BuildContext context) {
    String nome = produtos[widget.id]["nome"];
    num quantidade = produtos[widget.id]["quantidade"];
    String unidade = produtos[widget.id]["unidade"];
    String categoria = produtos[widget.id]["categoria"];

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
              descricao: nome,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: ItemDetalhes(
                titulo: "Quantidade:",
                descricao: formataQuantidadeUnidade(
                  quantidade,
                  unidade,
                ),
              ),
            ),
            ItemDetalhes(
              titulo: "Categoria:",
              descricao: categoria,
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
                    MaterialPageRoute(
                        builder: (context) => EdicaoProduto(id: widget.id)),
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
