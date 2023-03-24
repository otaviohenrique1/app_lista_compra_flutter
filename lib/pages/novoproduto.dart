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

class NovoProduto extends StatefulWidget {
  const NovoProduto({super.key});

  @override
  State<NovoProduto> createState() => _NovoProdutoState();
}

class _NovoProdutoState extends State<NovoProduto> {
  String dropdownValue = unidadeQuantidade.first;
  String dropdownValue2 = unidadeQuantidade.first;

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: const Header(titulo: "Novo Produto"),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              const CampoTexto(
                labelText: "Nome",
                keyboardType: TextInputType.text,
              ),
              const CampoTexto(
                labelText: "Quantidade",
                keyboardType: TextInputType.number,
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
              // DropdownButton<String>(
              //   // icon: const Icon(Icons.arrow_downward),
              //   // hint: const Text("Selecione"),
              //   // style: const TextStyle(color: Colors.deepPurple),
              //   value: dropdownValue,
              //   elevation: 16,
              //   underline: Container(
              //     height: 2,
              //     color: Colors.deepPurpleAccent,
              //   ),
              //   items: unidadeQuantidade
              //       .map<DropdownMenuItem<String>>((String value) {
              //     return DropdownMenuItem<String>(
              //       value: value,
              //       child: Text(value),
              //     );
              //   }).toList(),
              //   onChanged: (String? value) {
              //     // This is called when the user selects an item.
              //     setState(() {
              //       dropdownValue = value!;
              //     });
              //   },
              // ),
              const CampoTexto(
                labelText: "Categoria",
                keyboardType: TextInputType.text,
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: Botao(
                  backgroundColor: globalStyleColors["azul"],
                  label: "Salvar",
                  fontColor: Colors.white,
                  fontSize: 20,
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Processing Data'),
                          showCloseIcon: true,
                        ),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*
import 'package:app_lista_compra_flutter/pages/header.dart';
import 'package:app_lista_compra_flutter/styles/globalstyle.dart';
import 'package:app_lista_compra_flutter/utils/lista.dart';
import 'package:flutter/material.dart';

class NovoProduto extends StatefulWidget {
  const NovoProduto({super.key});

  @override
  State<NovoProduto> createState() => _NovoProdutoState();
}

class _NovoProdutoState extends State<NovoProduto> {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    String dropdownValue = unidadeQuantidade.first;

    return Scaffold(
      appBar: const Header(titulo: "Novo Produto"),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Campo vazio";
                          }
                          return null;
                        },
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                        decoration: const InputDecoration(
                          labelText: "Nome",
                          labelStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                          errorStyle: TextStyle(
                            color: Colors.red,
                            fontSize: 16,
                          ),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Campo vazio";
                                }
                                return null;
                              },
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              ),
                              decoration: const InputDecoration(
                                labelText: "Quantidade",
                                labelStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ),
                                errorStyle: TextStyle(
                                  color: Colors.red,
                                  fontSize: 16,
                                ),
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          SizedBox(
                            width: 100,
                            child: DropdownButton<String>(
                              value: dropdownValue,
                              // icon: const Icon(Icons.arrow_downward),
                              elevation: 16,
                              // style: const TextStyle(color: Colors.deepPurple),
                              underline: Container(
                                height: 2,
                                color: Colors.deepPurpleAccent,
                              ),
                              items: unidadeQuantidade
                                  .map<DropdownMenuItem<String>>(
                                      (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (String? value) {
                                // This is called when the user selects an item.
                                setState(() {
                                  dropdownValue = value!;
                                });
                              },
                            ),
                          )
                        ],
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Campo vazio";
                          }
                          return null;
                        },
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                        decoration: const InputDecoration(
                          labelText: "Categoria",
                          labelStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                          errorStyle: TextStyle(
                            color: Colors.red,
                            fontSize: 16,
                          ),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                    ],
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
                            content: Text('Processing Data'),
                            showCloseIcon: true,
                          ),
                        );
                      }
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {
      //     if (formKey.currentState!.validate()) {
      //       ScaffoldMessenger.of(context).showSnackBar(
      //         const SnackBar(
      //           content: Text('Processing Data'),
      //           showCloseIcon: true,
      //         ),
      //       );
      //     }
      //     // Navigator.push(
      //     //   context,
      //     //   MaterialPageRoute(builder: (context) => const NovoProduto()),
      //     // );
      //   },
      //   backgroundColor: globalStyleColors["azul"],
      //   // shape: const CircleBorder(),
      //   label: const Text(
      //     "Salvar",
      //     style: TextStyle(
      //       color: Colors.white,
      //       fontSize: 20,
      //     ),
      //   ),
      // ),
    );
  }
}

class Botao extends StatelessWidget {
  final void Function() onPressed;
  final Color fontColor;
  final Color backgroundColor;
  final String label;
  final double fontSize;

  const Botao({
    super.key,
    required this.onPressed,
    required this.fontColor,
    required this.label,
    required this.backgroundColor,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        // textStyle: const TextStyle(fontSize: 20),
        backgroundColor: backgroundColor,
        padding: const EdgeInsets.all(8),
        minimumSize: const Size.fromHeight(33),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: TextStyle(
          fontSize: fontSize,
          color: fontColor,
        ),
      ),
    );
  }
}
*/