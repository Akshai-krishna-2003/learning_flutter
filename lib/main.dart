import 'package:flutter/material.dart';
import 'package:learning_flutter/flutter_ui_learning/learn_center.dart';
import 'package:learning_flutter/flutter_ui_learning/learn_container.dart';
import 'package:learning_flutter/flutter_ui_learning/learn_inkwell.dart';
import 'package:learning_flutter/flutter_ui_learning/learn_listview.dart';
import 'package:learning_flutter/flutter_ui_learning/learn_rows_columns.dart';
import 'package:learning_flutter/flutter_ui_learning/learn_scrollview.dart';
import 'package:learning_flutter/flutter_ui_learning/learn_text_widget.dart';
import 'package:learning_flutter/flutter_ui_learning/learn_to_add_image.dart';
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LearnToAddImage()),
                  );
                },
                child: Text('Learn to Add Image'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LearnRowsColumns()),
                  );
                },
                child: Text('Rows and Columns'),
              ),
            ],
          ),
          InkWell(
            child: Center(
              child: Container(width: 200, height: 200, color: Colors.amber),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LearnInkwell()),
              );
            },
          ),
          InkWell(
            child: Text('Learn Scrollview'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LearnScrollview()),
              );
            },
          ),
          InkWell(
            child: Text('Learn Listview'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LearnListView()),
              );
            },
          ),
        ],
      ),
    );
  }
}
