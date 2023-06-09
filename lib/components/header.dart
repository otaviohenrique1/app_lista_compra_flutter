import 'package:flutter/material.dart';
import 'package:app_lista_compra_flutter/pages/perfil.dart';
import 'package:app_lista_compra_flutter/pages/busca.dart';
import 'package:app_lista_compra_flutter/pages/login.dart';
import 'package:app_lista_compra_flutter/styles/globalstyle.dart';

enum ItemMenuEnum { pefil, busca, sair }

class Header extends StatefulWidget implements PreferredSizeWidget {
  final String titulo;
  final bool botaoBusca;

  const Header({super.key, required this.titulo, required this.botaoBusca});

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
    // final ColorScheme colors = Theme.of(context).colorScheme;

    return AppBar(
      // backgroundColor: colors.onPrimary,
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
        Visibility(
          visible: widget.botaoBusca,
          child: IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
              size: 36,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Busca()),
              );
            },
          ),
        ),
        PopupMenuButton<ItemMenuEnum>(
          initialValue: selectedMenu,
          icon: const Icon(
            Icons.account_circle,
            color: Colors.white,
            size: 36,
          ),
          onSelected: (item) {
            setState(() {
              selectedMenu = item;
              if (item == ItemMenuEnum.busca) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Busca()),
                );
              } else if (item == ItemMenuEnum.pefil) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Perfil()),
                );
              } else if (item == ItemMenuEnum.sair) {
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('Aviso!'),
                    content: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Deseja sair do aplicativo?'),
                      ],
                    ),
                    icon: const Icon(
                      Icons.warning_amber_rounded,
                      size: 64,
                    ),
                    iconColor: Colors.red,
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        // onPressed: () => Navigator.pop(context, 'Cancel'),
                        child: const Text('Não'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          // Navigator.pop(context, 'OK');
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()),
                          );
                        },
                        child: const Text('Sim'),
                      ),
                    ],
                  ),
                );
                // Navigator.pushReplacement(
                //   context,
                //   MaterialPageRoute(builder: (context) => const Login()),
                // );
              }
            });
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<ItemMenuEnum>>[
            const PopupMenuItem<ItemMenuEnum>(
              value: ItemMenuEnum.pefil,
              child: Text(
                'Pefil',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const PopupMenuItem<ItemMenuEnum>(
              value: ItemMenuEnum.busca,
              child: Text(
                'Busca',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const PopupMenuItem<ItemMenuEnum>(
              value: ItemMenuEnum.sair,
              child: Text(
                'Sair',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
