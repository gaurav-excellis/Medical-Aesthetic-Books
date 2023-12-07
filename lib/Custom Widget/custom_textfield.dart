import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? labelText;
  final bool borderRequired;
  final int maxLines;
  final String? hintText;
  final Widget? suffixIcon;
  final Widget? icon;
  final bool isPassword;
  final TextInputType textInputType;
  final int? maxLength;
  final double borderRadius;
  final bool readOnly ;

  final List<TextInputFormatter>? inputFormatters;
  const CustomTextField({
    super.key,
    this.labelText,
    this.controller,
    this.hintText,
    this.maxLines = 1,
    this.borderRadius = 0,
    this.borderRequired = false,
    this.isPassword = false,
    this.textInputType = TextInputType.text,
    this.inputFormatters,
    this.maxLength,
    this.suffixIcon,
    this.icon,
    this.readOnly = false
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: textInputType,
      inputFormatters: inputFormatters,
      maxLength: maxLength,
      maxLines: maxLines,
      validator: (value) {
        if(value!.isEmpty){
          return "$labelText can't be empty";
        }
        return null;
      },
      readOnly: readOnly,
      obscureText: isPassword,
      decoration: InputDecoration(
        border: borderRequired
            ? OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius),
              )
            : null,
        counterText: "",
        icon: icon,
        hintText: hintText,
        suffixIcon: suffixIcon,
        labelText: labelText,
        labelStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
      ),
    );
  }
}
