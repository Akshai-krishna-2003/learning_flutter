import 'package:flutter/material.dart';
import 'package:learning_flutter/flutter_ui_learning/learn_center.dart';
import 'package:learning_flutter/flutter_ui_learning/learn_container.dart';
import 'package:learning_flutter/flutter_ui_learning/learn_text_widget.dart';
import 'package:learning_flutter/flutter_ui_learning/learning_button_types.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo', home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Demo Home Page')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LearnContainer(),
          SizedBox(height: 20),
          LearnCenter(),
          LearnTextWidget(),
          LearningButtonTypes(),
        ],
      ),
    );
  }
}
