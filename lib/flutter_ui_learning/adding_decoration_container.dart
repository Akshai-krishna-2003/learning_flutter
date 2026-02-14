import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddingDecorationContainer extends StatelessWidget {
  const AddingDecorationContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adding Decoration Container'),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Container(
            width: 200,
            height: 200,

            // You can find all decorations online anyways
            decoration: BoxDecoration(
              // This is how we use decoration in flutter
              color: Colors.redAccent,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              border: Border.all(width: 2, color: Colors.black),
              boxShadow: [
                BoxShadow(
                  color: Colors.pink,
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
              
            ),
          ),
        ),
      ),
    );
  }
}
