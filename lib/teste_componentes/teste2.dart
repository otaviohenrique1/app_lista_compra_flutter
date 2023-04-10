import 'package:app_lista_compra_flutter/components/campo_texto.dart';
import 'package:flutter/material.dart';
import 'package:app_lista_compra_flutter/components/header.dart';

import '../components/select.dart';
import '../utils/lista.dart';

class Teste2 extends StatefulWidget {
  const Teste2({super.key});

  @override
  State<Teste2> createState() => _Teste2State();
}

class _Teste2State extends State<Teste2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(
        titulo: "Teste",
        botaoBusca: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
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
                // asdasd
                // asdasd
                // asdasd
                // asdasd
                // asdasd
                // asdasd
                const Expanded(
                  child: CampoTexto(
                    hintText: "Quantidade",
                    keyboardType: TextInputType.number,
                  ),
                ),
                // asdasd
                // asdasd
                // asdasd
                // asdasd
                // asdasd
                // asdasd
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
    );
  }
}
