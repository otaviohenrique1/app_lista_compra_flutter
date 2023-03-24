import 'package:flutter/material.dart';

class CampoTexto extends StatelessWidget {
  final String labelText;
  final TextInputType keyboardType;
  final bool? obscureText;

  const CampoTexto({
    super.key,
    required this.labelText,
    required this.keyboardType,
    this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Campo vazio";
        }
        return null;
      },
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
      obscureText: (obscureText == null) ? false : obscureText!,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),
        errorStyle: const TextStyle(
          color: Colors.red,
          fontSize: 16,
        ),
      ),
      keyboardType: keyboardType,
    );
  }
}
