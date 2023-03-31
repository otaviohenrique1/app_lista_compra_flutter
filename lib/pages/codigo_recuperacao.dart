import 'package:app_lista_compra_flutter/pages/recuperar_senha.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:app_lista_compra_flutter/components/botao.dart';
import 'package:app_lista_compra_flutter/components/campo_texto.dart';
import 'package:app_lista_compra_flutter/styles/globalstyle.dart';

class CodigoRecuperacao extends StatefulWidget {
  const CodigoRecuperacao({super.key});

  @override
  State<CodigoRecuperacao> createState() => _CodigoRecuperacaoState();
}

class _CodigoRecuperacaoState extends State<CodigoRecuperacao> {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      body: AnnotatedRegion(
        value: SystemUiOverlayStyle.dark,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Form(
              key: formKey,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 64),
                      child: Text(
                        "Código de recuperação",
                        style: TextStyle(fontSize: 32),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      child: const CampoTexto(
                        labelText: "Digite o código de recuperação",
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 64),
                      child: Column(
                        children: [
                          Botao(
                            backgroundColor: globalStyleColors["azul"],
                            label: "Confirmar",
                            fontColor: Colors.white,
                            fontSize: 20,
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const RecuperarSenha(),
                                  ),
                                );
                              }
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8, bottom: 8),
                            child: Botao(
                              backgroundColor: Colors.red,
                              label: "Voltar",
                              fontColor: Colors.white,
                              fontSize: 20,
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
