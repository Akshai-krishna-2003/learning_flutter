import 'package:flutter/material.dart';

/// What is a container in flutter?
/// Container is a widget that allows you to
/// create a rectangular visual element on the screen.
///  It is a versatile widget that can be used to create various UI elements such as buttons, cards, and other visual components.
/// The container widget can be customized with various properties such as color, size, padding, margin, border, and more.

class LearnContainer extends StatefulWidget {
  const LearnContainer({super.key});

  @override
  State<LearnContainer> createState() => _LearnContainerState();
}

class _LearnContainerState extends State<LearnContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.lightBlue,
      child: Center(child: Text('This is a Container')),
    );
  }
}
