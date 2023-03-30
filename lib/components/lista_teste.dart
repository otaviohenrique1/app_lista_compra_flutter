import 'package:flutter/material.dart';
import 'package:app_lista_compra_flutter/components/item_lista.dart';

class ListaTeste extends StatelessWidget {
  const ListaTeste({super.key});

  @override
  Widget build(BuildContext context) {
    int id = 1;
    String nome = "Leite";
    num quantidade = 30;
    String unidade = "un";

    return ListView(
      children: <Widget>[
        ItemLista(id: id, nome: nome, quantidade: quantidade, unidade: unidade),
        ItemLista(id: id, nome: nome, quantidade: quantidade, unidade: unidade),
        ItemLista(id: id, nome: nome, quantidade: quantidade, unidade: unidade),
        ItemLista(id: id, nome: nome, quantidade: quantidade, unidade: unidade),
        ItemLista(id: id, nome: nome, quantidade: quantidade, unidade: unidade),
        ItemLista(id: id, nome: nome, quantidade: quantidade, unidade: unidade),
        ItemLista(id: id, nome: nome, quantidade: quantidade, unidade: unidade),
        ItemLista(id: id, nome: nome, quantidade: quantidade, unidade: unidade),
        ItemLista(id: id, nome: nome, quantidade: quantidade, unidade: unidade),
        ItemLista(id: id, nome: nome, quantidade: quantidade, unidade: unidade),
      ],
    );
  }
}
