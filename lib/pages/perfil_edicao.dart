import 'package:flutter/material.dart';
import 'package:app_lista_compra_flutter/components/campo_texto.dart';
import 'package:app_lista_compra_flutter/pages/perfil.dart';
import 'package:app_lista_compra_flutter/components/botao.dart';
import 'package:app_lista_compra_flutter/styles/globalstyle.dart';
import 'package:app_lista_compra_flutter/components/header.dart';

class PerfilEdicao extends StatefulWidget {
  const PerfilEdicao({super.key});

  @override
  State<PerfilEdicao> createState() => _PerfilEdicaoState();
}

class _PerfilEdicaoState extends State<PerfilEdicao> {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: const Header(
        titulo: "Perfil",
        botaoBusca: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  child: const CampoTexto(
                    labelText: "Nome",
                    keyboardType: TextInputType.text,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  child: const CampoTexto(
                    labelText: "Email",
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  child: const CampoTexto(
                    labelText: "Senha",
                    keyboardType: TextInputType.text,
                    obscureText: true,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  child: const CampoTexto(
                    labelText: "Repita a senha",
                    keyboardType: TextInputType.text,
                    obscureText: true,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 64),
                  child: Botao(
                    backgroundColor: globalStyleColors["azul"],
                    label: "Salvar",
                    fontColor: Colors.white,
                    fontSize: 20,
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Usuario cadastrado'),
                            showCloseIcon: true,
                          ),
                        );
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Perfil()),
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
