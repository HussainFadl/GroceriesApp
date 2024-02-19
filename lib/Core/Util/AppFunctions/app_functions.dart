import 'package:flutter/material.dart';

class Appfunctions {
  static navigatingToNextScreen(
      {required context, required Widget navigatedScreen}) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => navigatedScreen));
  }
}
