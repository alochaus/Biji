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
  final bool border;

  InputField({
    @required this.controller,
    this.icon,
    this.label,
    this.hint,
    this.maxLines = 1,
    this.minLines,
    @required this.inputType,
    this.border = true,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        15.0,
        2.5,
        15.0,
        0.0,
      ),
      child: TextField(
        controller: controller,
        style: TextStyle(
          fontSize: 25.0,
          color: Colors.white,
        ),
        decoration: InputDecoration(
          icon: icon != null ? Icon(icon) : null,
          labelText: label ?? null,
          hintText: hint ?? null,
          border: border ? null : InputBorder.none,
          enabledBorder: border ? null : InputBorder.none,
          errorBorder: border ? null : InputBorder.none,
          disabledBorder: border ? null : InputBorder.none,
        ),
        keyboardType: inputType,
        minLines: minLines,
        maxLines: maxLines,
      ),
    );
  }
}
