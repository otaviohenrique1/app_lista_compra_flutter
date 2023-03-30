import 'package:flutter/material.dart';
import 'package:app_lista_compra_flutter/components/campo_texto.dart';
import 'package:app_lista_compra_flutter/components/header.dart';

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
    final ColorScheme colors = Theme.of(context).colorScheme;
    String termoBusca = "Teste";

    return Scaffold(
      appBar: const Header(
        titulo: "Novo Produto",
        botaoBusca: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Form(
              key: formKey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: SizedBox(
                      width: 280,
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        child: const CampoTexto(
                          labelText: "Nome do produto",
                          keyboardType: TextInputType.text,
                        ),
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   child: Ink(
                  //     decoration: const ShapeDecoration(
                  //       color: Colors.blueAccent,
                  //       shape: RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.all(
                  //           Radius.circular(8),
                  //         ),
                  //       ),
                  //     ),
                  //     child: IconButton(
                  //       onPressed: () {
                  //         if (formKey.currentState!.validate()) {}
                  //       },
                  //       icon: const Icon(
                  //         Icons.search,
                  //         color: Colors.white,
                  //         size: 22,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {}
                    },
                    style: IconButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      foregroundColor: colors.onPrimary,
                      backgroundColor: colors.primary,
                      disabledBackgroundColor:
                          colors.onSurface.withOpacity(0.12),
                      hoverColor: colors.onPrimary.withOpacity(0.08),
                      focusColor: colors.onPrimary.withOpacity(0.12),
                      highlightColor: colors.onPrimary.withOpacity(0.12),
                    ),
                  ),
                  // IconButton(
                  //   icon: const Icon(Icons.search),
                  //   onPressed: () {
                  //     if (formKey.currentState!.validate()) {}
                  //   },
                  //   style: IconButton.styleFrom(
                  //     shape: const RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.all(
                  //         Radius.circular(8),
                  //       ),
                  //     ),
                  //     foregroundColor: colors.onPrimary,
                  //     backgroundColor: colors.primary,
                  //     disabledBackgroundColor:
                  //         colors.onSurface.withOpacity(0.12),
                  //     hoverColor: colors.onPrimary.withOpacity(0.08),
                  //     focusColor: colors.onPrimary.withOpacity(0.12),
                  //     highlightColor: colors.onPrimary.withOpacity(0.12),
                  //   ),
                  // ),
                  // IconButton(
                  //   onPressed: () {
                  //     if (formKey.currentState!.validate()) {}
                  //   },
                  //   icon: const Icon(
                  //     Icons.search,
                  //     color: Colors.black,
                  //     size: 22,
                  //   ),
                  // )
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
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      style: BorderStyle.solid,
                      width: 1,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 8),
                        child: Text(
                          "Termo busca:",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Center(
                        child: Text(
                          termoBusca,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
