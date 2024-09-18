import 'package:flutter/material.dart';

class ResponsiveTextField extends StatelessWidget {
  const ResponsiveTextField(
      {super.key,
      required this.labelText,
      required this.lrefixIcons,
      required this.obscureText});
  final String labelText;
  final Widget lrefixIcons;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        prefixIcon: lrefixIcons,
        labelText: labelText,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}
