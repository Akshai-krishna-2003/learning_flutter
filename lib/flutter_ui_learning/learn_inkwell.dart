import 'package:flutter/material.dart';

/// To get an onTap on any widget we use Ink well
/// Inkwell has a child and onTap/onLongPress etc
/// child --> Whichever widget we need to implement the onTap

class LearnInkwell extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LearnInkwellState();
}

class _LearnInkwellState extends State<LearnInkwell> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: InkWell(
          child: Center(child: Image.asset('assets/images/img1.png')),
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('This is inkwell on tap'),
                duration: const Duration(seconds: 2),
              ),
            );
          },
          onDoubleTap: () => ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('This is inkwell on double tap'),
              duration: const Duration(seconds: 2),
            ),
          ),
        ),
      ),
    );
  }
}
