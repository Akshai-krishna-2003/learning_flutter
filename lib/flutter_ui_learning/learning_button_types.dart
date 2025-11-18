import 'package:flutter/material.dart';

/// What is buttons and its types in flutter?
/// A button is a clickable widget that allows users to perform an action or trigger an event when pressed.
/// Flutter provides several built-in button widgets, each with its own unique style and behavior.

class LearningButtonTypes extends StatefulWidget {
  const LearningButtonTypes({super.key});
  @override
  State<LearningButtonTypes> createState() => _LearningButtonTypesState();
}

class _LearningButtonTypesState extends State<LearningButtonTypes> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Row(
        children: [
          // Text Button --> A simple button with text label
          Expanded(
            child: TextButton(
              onPressed: () {
                showToast('Text Button Pressed');
              },
              child: Text('Text Button'),
              onLongPress: () {
                showToast('Text Button Long Pressed');
              },
            ),
          ),
          // Elevated Button --> A button with a raised appearance
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                showToast('Elevated Button Pressed');
              },
              child: Text('Elevated Button'),
            ),
          ),
          // Outlined Button --> A button with an outlined border
          Expanded(
            child: OutlinedButton(
              onPressed: () {
                showToast('Outlined Button Pressed');
              },
              child: Text('Outlined Button', textAlign: TextAlign.center),
            ),
          ),
        ],
      ),
    );
  }

  void showToast(String message) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(SnackBar(content: Text(message)));
  }
}
