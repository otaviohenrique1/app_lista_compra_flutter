import 'package:flutter/material.dart';
import 'package:app_lista_compra_flutter/pages/esqueceu_senha.dart';
import 'package:flutter/services.dart';
import 'package:app_lista_compra_flutter/components/botao.dart';
import 'package:app_lista_compra_flutter/components/campo_texto.dart';
import 'package:app_lista_compra_flutter/pages/homepage.dart';
import 'package:app_lista_compra_flutter/pages/novo_usuario.dart';
import 'package:app_lista_compra_flutter/styles/globalstyle.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                        "Lista de compras",
                        style: TextStyle(fontSize: 32),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      child: const CampoTexto(
                        labelText: "Email",
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      child: const CampoTexto(
                        labelText: "Senha",
                        keyboardType: TextInputType.text,
                        obscureText: true,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 64),
                      child: Column(
                        children: [
                          Botao(
                            backgroundColor: globalStyleColors["azul"],
                            label: "Entrar",
                            fontColor: Colors.white,
                            fontSize: 20,
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const HomePage(),
                                  ),
                                );
                              }
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8, bottom: 8),
                            child: Botao(
                              backgroundColor: Colors.green,
                              label: "Novo usuário",
                              fontColor: Colors.white,
                              fontSize: 20,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const NovoUsuario(),
                                  ),
                                );
                              },
                            ),
                          ),
                          Botao(
                            backgroundColor: Colors.deepOrange,
                            label: "Esqueceu a senha?",
                            fontColor: Colors.white,
                            fontSize: 20,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const EsqueceuSenha(),
                                ),
                              );
                            },
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
