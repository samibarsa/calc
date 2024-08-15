import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hint,
      this.maxLines = 1,
      this.onSaved,
      this.onChanged,
      this.keyboardType });
  final String hint;
  final int maxLines;
  final TextInputType? keyboardType;
  final void Function(String?)? onSaved;
  final Function(String)? onChanged;
  @override 
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field required';
        } else {
          return null;
        }
      },
      maxLines: maxLines,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        hintText: hint,
        border: BuildBorder(),
        enabledBorder: BuildBorder(),
        focusedBorder: BuildBorder().copyWith(borderSide: BorderSide(width: 2)),
      ),
    );
  }

  OutlineInputBorder BuildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: color ?? Colors.black),
    );
  }
}
