import 'package:flutter/material.dart';
import 'package:app_lista_compra_flutter/pages/usuario_formulario.dart';

class NovoUsuario extends StatefulWidget {
  const NovoUsuario({super.key});

  @override
  State<NovoUsuario> createState() => _NovoUsuarioState();
}

class _NovoUsuarioState extends State<NovoUsuario> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        // padding: EdgeInsets.only(left: 16, right: 16, top: 32, bottom: 32),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 64),
                  child: Text(
                    "Novo usuário",
                    style: TextStyle(fontSize: 32),
                  ),
                ),
                UsuarioFormulario(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
