import 'package:app_lista_compra_flutter/components/botao.dart';
import 'package:app_lista_compra_flutter/components/campotexto.dart';
import 'package:app_lista_compra_flutter/components/header.dart';
import 'package:app_lista_compra_flutter/styles/globalstyle.dart';
import 'package:flutter/material.dart';

const List<String> unidadeQuantidade = <String>[
  "Selecione",
  "un",
  "g",
  "mg",
  "kg",
  "l",
  "ml"
];

class Busca extends StatefulWidget {
  const Busca({super.key});

  @override
  State<Busca> createState() => _BuscaState();
}

class _BuscaState extends State<Busca> {
  String dropdownValue = unidadeQuantidade.first;
  String dropdownValue2 = unidadeQuantidade.first;

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: const Header(
        titulo: "Novo Produto",
        botaoBusca: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: const CampoTexto(
                  labelText: "Nome do produto",
                  keyboardType: TextInputType.text,
                ),
              ),
              Ink(
                decoration: const ShapeDecoration(
                  color: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 22,
                  ),
                ),
              ),
              // Botao(
              //   backgroundColor: globalStyleColors["azul"],
              //   label: "Buscar",
              //   fontColor: Colors.white,
              //   fontSize: 20,
              //   onPressed: () {
              //     if (formKey.currentState!.validate()) {
              //       ScaffoldMessenger.of(context).showSnackBar(
              //         const SnackBar(
              //           content: Text('Processing Data'),
              //           showCloseIcon: true,
              //         ),
              //       );
              //     }
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
