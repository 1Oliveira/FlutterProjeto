// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MainTextFormField extends StatelessWidget {
  final FormFieldSetter? onSaved;
  final String labelText;
  final FormFieldValidator? validator;

  const MainTextFormField({
    Key? key,
    this.onSaved,
    required this.labelText,
    this.validator,
  }) : super(key: key);

  String? defaultValidator(value) {
    if (value!.isEmpty) {
      return 'Campo obrigatório';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: TextFormField(
        decoration: InputDecoration(labelText: labelText),
        validator: validator ?? defaultValidator,
        onSaved: onSaved,
      ),
    );
  }
}
