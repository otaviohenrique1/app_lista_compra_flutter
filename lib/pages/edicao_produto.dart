import 'package:flutter/material.dart';
import 'package:app_lista_compra_flutter/components/botao.dart';
import 'package:app_lista_compra_flutter/components/campo_texto.dart';
import 'package:app_lista_compra_flutter/components/header.dart';
import 'package:app_lista_compra_flutter/styles/globalstyle.dart';

const List<String> unidadeQuantidade = <String>[
  "Selecione",
  "un",
  "g",
  "mg",
  "kg",
  "l",
  "ml"
];

class EdicaoProduto extends StatefulWidget {
  const EdicaoProduto({super.key});

  @override
  State<EdicaoProduto> createState() => _EdicaoProdutoState();
}

class _EdicaoProdutoState extends State<EdicaoProduto> {
  String dropdownValue = unidadeQuantidade.first;
  String dropdownValue2 = unidadeQuantidade.first;

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: const Header(
        titulo: "Edição",
        botaoBusca: true,
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
                  labelText: "Nome",
                  keyboardType: TextInputType.text,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: const CampoTexto(
                  labelText: "Quantidade",
                  keyboardType: TextInputType.number,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: DropdownButtonFormField(
                  value: dropdownValue,
                  items: unidadeQuantidade
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (value) async {
                    setState(() {
                      dropdownValue = value!;
                    });
                  },
                  decoration: const InputDecoration(
                    errorStyle: TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                    ),
                  ),
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        value == "Selecione") {
                      return "Valor inválido";
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 50),
                child: const CampoTexto(
                  labelText: "Categoria",
                  keyboardType: TextInputType.text,
                ),
              ),
              Botao(
                backgroundColor: globalStyleColors["azul"],
                label: "Salvar",
                fontColor: Colors.white,
                fontSize: 20,
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Produto editado com sucesso!",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        showCloseIcon: true,
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
