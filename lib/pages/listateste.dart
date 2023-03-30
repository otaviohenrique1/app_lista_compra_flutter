import 'package:flutter/material.dart';
import '../components/itemlista.dart';

class ListaTeste extends StatelessWidget {
  const ListaTeste({super.key});

  @override
  Widget build(BuildContext context) {
    String nome = "Leite";
    num quantidade = 30;
    String unidade = "un";

    return ListView(
      children: <Widget>[
        ItemLista(nome: nome, quantidade: quantidade, unidade: unidade),
        ItemLista(nome: nome, quantidade: quantidade, unidade: unidade),
        ItemLista(nome: nome, quantidade: quantidade, unidade: unidade),
        ItemLista(nome: nome, quantidade: quantidade, unidade: unidade),
        ItemLista(nome: nome, quantidade: quantidade, unidade: unidade),
        ItemLista(nome: nome, quantidade: quantidade, unidade: unidade),
        ItemLista(nome: nome, quantidade: quantidade, unidade: unidade),
        ItemLista(nome: nome, quantidade: quantidade, unidade: unidade),
        ItemLista(nome: nome, quantidade: quantidade, unidade: unidade),
        ItemLista(nome: nome, quantidade: quantidade, unidade: unidade),
      ],
    );
  }
}
