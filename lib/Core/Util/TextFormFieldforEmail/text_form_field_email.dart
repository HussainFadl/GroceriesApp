import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFormFieldforEmail extends StatefulWidget {
  const TextFormFieldforEmail({super.key});

  @override
  State<TextFormFieldforEmail> createState() => _TextFormFieldforEmailState();
}

class _TextFormFieldforEmailState extends State<TextFormFieldforEmail> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(5),
        label: const Text(
          'Email',
          style: TextStyle(fontWeight: FontWeight.w300),
        ),
        hintText: 'imshuvo97@gmail.com',
        hintStyle: GoogleFonts.aBeeZee(),
      ),
      keyboardType: TextInputType.emailAddress,
    );
  }
}
