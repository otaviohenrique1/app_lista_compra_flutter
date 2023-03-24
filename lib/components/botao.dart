import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  final void Function() onPressed;
  final Color fontColor;
  final Color backgroundColor;
  final String label;
  final double fontSize;

  const Botao({
    super.key,
    required this.onPressed,
    required this.fontColor,
    required this.label,
    required this.backgroundColor,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        // textStyle: const TextStyle(fontSize: 20),
        backgroundColor: backgroundColor,
        padding: const EdgeInsets.all(8),
        minimumSize: const Size.fromHeight(33),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: TextStyle(
          fontSize: fontSize,
          color: fontColor,
        ),
      ),
    );
  }
}
