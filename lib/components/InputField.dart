import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputField extends StatelessWidget {
  final TextEditingController controller;
  final IconData icon;
  final String label;
  final String hint;
  final TextInputType inputType;
  final int maxLines;
  final int minLines;
  final bool expands;

  InputField({
    @required this.controller,
    this.icon,
    this.label,
    this.hint,
    this.maxLines,
    this.minLines,
    this.expands = false,
    @required this.inputType,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextField(
        controller: controller,
        style: TextStyle(fontSize: 15.0),
        decoration: InputDecoration(
          icon: icon != null ? Icon(icon) : null,
          labelText: label ?? null,
          hintText: hint ?? null,
        ),
        keyboardType: inputType,
        maxLines: maxLines,
        minLines: minLines,
        expands: expands,
      ),
    );
  }
}
