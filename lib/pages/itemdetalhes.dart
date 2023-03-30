import 'package:flutter/material.dart';
import 'package:app_lista_compra_flutter/styles/globalstyle.dart';

class ItemDetalhes extends StatelessWidget {
  final String titulo;
  final String descricao;

  const ItemDetalhes({
    super.key,
    required this.titulo,
    required this.descricao,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: globalStyleColors["cinzaClaro"],
        border: Border.all(),
        borderRadius: const BorderRadius.all(
          Radius.elliptical(8, 8),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                titulo,
                style: const TextStyle(fontSize: 16),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                descricao,
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
