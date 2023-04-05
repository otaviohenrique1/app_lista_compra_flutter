import 'package:flutter/material.dart';

class Select extends StatefulWidget {
  const Select({
    super.key,
    required this.lista,
    this.validator,
  });
  final List<String> lista;
  final String? Function(String?)? validator;

  @override
  State<Select> createState() => _SelectState();
}

class _SelectState extends State<Select> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = widget.lista.first;

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
