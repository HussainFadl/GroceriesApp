import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFormFieldforUserName extends StatefulWidget {
  const TextFormFieldforUserName({super.key});

  @override
  State<TextFormFieldforUserName> createState() =>
      _TextFormFieldforUserNameState();
}

class _TextFormFieldforUserNameState extends State<TextFormFieldforUserName> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(5),
        label: const Text(
          'Username',
          style: TextStyle(fontWeight: FontWeight.w300),
        ),
        hintText: 'Hussain FadlAllah',
        hintStyle: GoogleFonts.aBeeZee(),
      ),
    );
  }
}
