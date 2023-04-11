import 'package:flutter/material.dart';

class Select extends StatefulWidget {
  const Select({
    super.key,
    required this.lista,
    this.validator,
    this.outroItem,
  });

  final List<String> lista;
  final String? Function(String?)? validator;
  final String? outroItem;

  @override
  State<Select> createState() => _SelectState();
}

class _SelectState extends State<Select> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue =
        (widget.outroItem == null) ? widget.lista.first : widget.outroItem!;

    return DropdownButtonFormField(
      value: dropdownValue,
      items: widget.lista.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: const TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 16,
            ),
          ),
        );
      }).toList(),
      onChanged: (value) async {
        setState(() {
          dropdownValue = value!;
        });
      },
      decoration: const InputDecoration(
        errorStyle: TextStyle(
          color: Colors.red,
          fontSize: 16,
        ),
      ),
      validator: widget.validator,
    );
  }
}
