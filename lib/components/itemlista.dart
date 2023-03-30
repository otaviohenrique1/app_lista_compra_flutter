import 'package:app_lista_compra_flutter/pages/detalhes.dart';
import 'package:flutter/material.dart';
import 'package:app_lista_compra_flutter/styles/globalstyle.dart';

enum ItemMenuEnum { exibir, editar, remover }

class ItemLista extends StatefulWidget {
  final String nome;
  final num quantidade;
  final String unidade;
  const ItemLista({
    super.key,
    required this.nome,
    required this.quantidade,
    required this.unidade,
  });

  @override
  State<ItemLista> createState() => _ItemListaState();
}

class _ItemListaState extends State<ItemLista> {
  @override
  Widget build(BuildContext context) {
    ItemMenuEnum? selectedMenu;

    return Container(
      color: globalStyleColors["cinzaClaro"],
      padding: const EdgeInsets.only(bottom: 16, left: 16, top: 16),
      margin: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            widget.nome,
            textAlign: TextAlign.start,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "${widget.quantidade} ${widget.unidade}",
                textAlign: TextAlign.end,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              PopupMenuButton<ItemMenuEnum>(
                initialValue: selectedMenu,
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.black,
                  size: 20,
                ),
                onSelected: (ItemMenuEnum item) {
                  setState(() {
                    selectedMenu = item;
                    if (item == ItemMenuEnum.exibir) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Detalhes(),
                          ));
                    }
                  });
                },
                itemBuilder: (BuildContext context) =>
                    <PopupMenuEntry<ItemMenuEnum>>[
                  const PopupMenuItem<ItemMenuEnum>(
                    value: ItemMenuEnum.exibir,
                    child: Text('Exibir'),
                  ),
                  const PopupMenuItem<ItemMenuEnum>(
                    value: ItemMenuEnum.editar,
                    child: Text('Editar'),
                  ),
                  const PopupMenuItem<ItemMenuEnum>(
                    value: ItemMenuEnum.remover,
                    child: Text('Remover'),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
