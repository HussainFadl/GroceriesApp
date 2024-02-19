import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PassWordTestFormField extends StatefulWidget {
  const PassWordTestFormField({super.key});

  @override
  State<PassWordTestFormField> createState() => _PassWordTestFormFieldState();
}

class _PassWordTestFormFieldState extends State<PassWordTestFormField> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: !isVisible,
      decoration: InputDecoration(
        //contentPadding: const EdgeInsets.all(1),
        label: const Text(
          'Password',
          style: TextStyle(fontWeight: FontWeight.w300),
        ),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              isVisible = !isVisible;
            });
          },
          icon: Icon((isVisible) ? Icons.remove_red_eye : Icons.visibility_off),
        ),
        hintText: '*********',
        hintStyle: GoogleFonts.aBeeZee(),
      ),
    );
  }
}
