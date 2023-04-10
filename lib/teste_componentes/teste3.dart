import 'package:flutter/material.dart';
import 'package:app_lista_compra_flutter/components/campo_texto.dart';
import 'package:app_lista_compra_flutter/components/header.dart';
import 'package:app_lista_compra_flutter/components/select.dart';
import 'package:app_lista_compra_flutter/utils/lista.dart';

class Teste3 extends StatefulWidget {
  const Teste3({super.key});

  @override
  State<Teste3> createState() => _Teste3State();
}

class _Teste3State extends State<Teste3> {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: const Header(
        titulo: "Teste",
        botaoBusca: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              Row(
                children: [
                  Expanded(
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
                        // labelText: "Teste",
                        hintText: "Teste",
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
                  const SizedBox(width: 16),
                  Expanded(
                    child: Select(
                      lista: unidadeQuantidade,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Select2(
                      lista: unidadeQuantidade,
                      outroItem: unidadeQuantidade[1],
                    ),
                  ),
                  const SizedBox(width: 16),
                  const Expanded(
                    child: CampoTexto(
                      hintText: "Quantidade",
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  Expanded(
                    child: CampoTexto(
                      hintText: "Quantidade",
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: CampoTexto(
                      hintText: "Quantidade",
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  Expanded(
                    child: CampoTexto(
                      hintText: "Quantidade",
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: CampoTexto(
                      hintText: "Quantidade",
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  Expanded(
                    child: CampoTexto(
                      hintText: "Quantidade",
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: CampoTexto(
                      hintText: "Quantidade",
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  Expanded(
                    child: CampoTexto(
                      hintText: "Quantidade",
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: CampoTexto(
                      hintText: "Quantidade",
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  Expanded(
                    child: CampoTexto(
                      hintText: "Quantidade",
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: CampoTexto(
                      hintText: "Quantidade",
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  Expanded(
                    child: CampoTexto(
                      hintText: "Quantidade",
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: CampoTexto(
                      hintText: "Quantidade",
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Expanded(
                    child: CampoTexto(
                      hintText: "Quantidade",
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
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
                        labelText: "Teste",
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
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Nome',
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Sobrenome',
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Select2 extends StatefulWidget {
  const Select2({
    super.key,
    required this.lista,
    this.validator,
    this.outroItem,
  });

  final List<String> lista;
  final String? Function(String?)? validator;
  final String? outroItem;

  @override
  State<Select2> createState() => _Select2State();
}

class _Select2State extends State<Select2> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue =
        (widget.outroItem == null) ? widget.lista.first : widget.outroItem!;

    return DropdownButtonFormField(
      value: dropdownValue,
      items: widget.lista.map<DropdownMenuItem<String>>((String value) {
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
      validator: widget.validator,
    );
  }
}
