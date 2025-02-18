import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputWidget1 extends StatelessWidget{
  TextEditingController TEController;
  String label ;
  bool obscureText;
  String hintText;
  Widget prefixIcon;
  // Widget suffixIcon;
  Color iconColor;
  String? errorText;

  InputWidget1({
    super.key,
   required this.TEController,
    required this.label,
    required this.hintText,
    required this.prefixIcon,
    // required this.suffixIcon,
    required this.iconColor,
    required this.obscureText,
    required this.errorText,

  });

  @override
  Widget build(BuildContext context) {

    return TextField(
      controller: TEController,
      obscureText:obscureText ,
      decoration: InputDecoration(
        label: Text(label),
        hintText: hintText,
        prefixIcon: prefixIcon,
        // suffixIcon: suffixIcon,
        iconColor: iconColor,
        errorText: errorText ,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))
      ),
    );
  }

}