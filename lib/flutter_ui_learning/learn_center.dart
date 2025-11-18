import 'package:flutter/material.dart';

/// What is Center widget in flutter?
/// The Center widget in Flutter is a layout widget that centers its child widget within itself.
/// It is commonly used to center a single widget both horizontally and vertically within its parent widget.

class LearnCenter extends StatelessWidget {
  const LearnCenter({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'This is Center Widget',
        style: TextStyle(fontSize: 24, fontFamily: 'Arial'),
      ),
    );
  }
}
