import 'package:flutter/material.dart';

class CampoTexto extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final String? initialValue;

  const CampoTexto({
    super.key,
    this.keyboardType,
    this.labelText,
    this.obscureText,
    this.initialValue,
    this.hintText,
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
      initialValue: initialValue,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
      obscureText: (obscureText == null) ? false : obscureText!,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
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
