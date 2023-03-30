import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:app_lista_compra_flutter/pages/login.dart';
import 'package:app_lista_compra_flutter/components/botao.dart';
import 'package:app_lista_compra_flutter/components/campo_texto.dart';
import 'package:app_lista_compra_flutter/styles/globalstyle.dart';

class NovoUsuario extends StatefulWidget {
  const NovoUsuario({super.key});

  @override
  State<NovoUsuario> createState() => _NovoUsuarioState();
}

class _NovoUsuarioState extends State<NovoUsuario> {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      body: AnnotatedRegion(
        value: SystemUiOverlayStyle.dark,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
            child: Center(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 64),
                    child: Text(
                      "Novo usuário",
                      style: TextStyle(fontSize: 32),
                    ),
                  ),
                  Form(
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
                                    builder: (context) => const Login(),
                                  ),
                                );
                              }
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
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
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
