import 'package:app_lista_compra_flutter/components/botao.dart';
import 'package:app_lista_compra_flutter/components/header.dart';
import 'package:app_lista_compra_flutter/pages/teste.dart';
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
              DropdownButton<String>(
                value: dropdownValue,
                // icon: const Icon(Icons.arrow_downward),
                elevation: 16,
                // style: const TextStyle(color: Colors.deepPurple),
                underline: Container(
                  height: 2,
                  color: Colors.deepPurpleAccent,
                ),
                items: unidadeQuantidade
                    .map<DropdownMenuItem<String>>((String value) {
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
              const Campo(
                labelText: "Categoria",
                keyboardType: TextInputType.text,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 16),
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
              Botao(
                backgroundColor: globalStyleColors["azul"],
                label: "Teste",
                fontColor: Colors.white,
                fontSize: 20,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Teste()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Campo extends StatelessWidget {
  final String labelText;
  final TextInputType keyboardType;

  const Campo({
    super.key,
    required this.labelText,
    required this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
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
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
          errorStyle: const TextStyle(
            color: Colors.red,
            fontSize: 16,
          ),
        ),
        keyboardType: keyboardType,
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