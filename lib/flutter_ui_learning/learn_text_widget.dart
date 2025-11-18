import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// What is Text widget in flutter?
/// The Text widget in Flutter is used to display a string of text with single style.

class LearnTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'This is a Text Widget',
      style: TextStyle(
        fontSize: 20,
        color: Color(0xFF000000),
        fontWeight: FontWeight.w100, // Makes the text thin
        backgroundColor: Colors.white,
      ),
    );
  }
}
