import 'package:app_lista_compra_flutter/utils/lista.dart';
import 'package:flutter/material.dart';
import 'package:app_lista_compra_flutter/pages/itemdetalhes.dart';
import 'package:app_lista_compra_flutter/styles/globalstyle.dart';
import 'package:app_lista_compra_flutter/components/header.dart';
import '../components/botao.dart';

class PerfilEdicao extends StatefulWidget {
  const PerfilEdicao({super.key});

  @override
  State<PerfilEdicao> createState() => _PerfilEdicaoState();
}

class _PerfilEdicaoState extends State<PerfilEdicao> {
  @override
  Widget build(BuildContext context) {
    String senha = usuario[0]["senha"];

    return Scaffold(
      appBar: const Header(
        titulo: "Perfil",
        botaoBusca: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            ItemDetalhes(
              titulo: "Nome:",
              descricao: usuario[0]["nome"],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: ItemDetalhes(
                titulo: "E-mail:",
                descricao: usuario[0]["email"],
              ),
            ),
            ItemDetalhes(
              titulo: "Senha:",
              descricao: senha,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: Botao(
                backgroundColor: globalStyleColors["azul"],
                label: "Editar",
                fontColor: Colors.white,
                fontSize: 20,
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const Edicao()),
                  // );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
