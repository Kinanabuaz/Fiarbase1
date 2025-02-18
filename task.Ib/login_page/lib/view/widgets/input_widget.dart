import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class InputWidget extends StatelessWidget {
  TextEditingController textEditingController;
  String label;
  bool obscureText;
  String? errorText;
  String? hintText;
  String? maxLine;
  TextInputType?keyboardType;
  Widget prefixIcon;
  Widget? suffixIcon;

  InputWidget({
    super.key,
    required this.textEditingController,
    required this.obscureText,
    required this.prefixIcon,
    required this.label,
    this.suffixIcon,
    this.keyboardType,
    this.hintText,
    this.maxLine,
    this.errorText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      controller: textEditingController,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        label: Text(label),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        errorText: errorText,
      ),
    );
  }
}
