import 'package:flutter/material.dart';
import 'package:app_lista_compra_flutter/styles/globalstyle.dart';

enum ItemMenuEnum { pefil, busca, sair }

class Header extends StatefulWidget implements PreferredSizeWidget {
  final String titulo;

  const Header({super.key, required this.titulo});

  @override
  State<Header> createState() => _HeaderState();

  @override
  Size get preferredSize {
    return const Size.fromHeight(67);
  }
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    ItemMenuEnum? selectedMenu;

    return AppBar(
      backgroundColor: globalStyleColors["azul"],
      title: Text(
        widget.titulo,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 24,
        ),
        textAlign: TextAlign.start,
      ),
      iconTheme: const IconThemeData(
        color: Colors.white,
        size: 36,
      ),
      // toolbarHeight: 67,
      actions: [
        IconButton(
          icon: const Icon(
            Icons.search,
            color: Colors.white,
            size: 36,
          ),
          onPressed: () {},
        ),
        PopupMenuButton<ItemMenuEnum>(
          initialValue: selectedMenu,
          icon: const Icon(
            Icons.account_circle,
            color: Colors.white,
            size: 36,
          ),
          onSelected: (ItemMenuEnum item) {
            setState(() {
              selectedMenu = item;
            });
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<ItemMenuEnum>>[
            const PopupMenuItem<ItemMenuEnum>(
              value: ItemMenuEnum.pefil,
              child: Text('Pefil'),
            ),
            const PopupMenuItem<ItemMenuEnum>(
              value: ItemMenuEnum.busca,
              child: Text('Busca'),
            ),
            const PopupMenuItem<ItemMenuEnum>(
              value: ItemMenuEnum.sair,
              child: Text('Sair'),
            ),
          ],
        )
      ],
    );
  }
}
