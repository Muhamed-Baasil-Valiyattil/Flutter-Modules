
import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {

  final TextEditingController controller;
  final bool obscureText;
  final String hintText;

  const AuthTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return TextField(

      obscureText: obscureText,
      controller: controller,
      decoration: InputDecoration(
        hintStyle: TextStyle(
          color: Colors.grey.shade500,
        ),
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
          borderSide: const BorderSide(
            color: Colors.white
          ),
          
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
          borderSide: const BorderSide(
            color: Colors.white
          ),
          
        ),

        fillColor: Colors.grey.shade200,
        filled: true,
      ),
      
    );
  }
}