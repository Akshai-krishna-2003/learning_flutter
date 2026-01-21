import 'package:flutter/material.dart';

/// This is used to use special function that can be passed into another function
/// Like an Argument
/// For code maintainability
class LearnCallBackFunction extends StatelessWidget {
  void callBackFunc(String msg){
    print(msg);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          // onPressed: () => print('Click me'), /// Instead of doing like this we do it in another way
          onPressed: () => callBackFunc('Yoo!!!'),
          child: Text('Click me'),
        ),
      ),
    );
  }
}
