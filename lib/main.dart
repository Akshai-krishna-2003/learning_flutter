import 'package:flutter/material.dart';

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
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 152, 204, 246),
        title: Center(
          child: Text(
            'Home Screen',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.read_more, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Center(child: TextWidgetChange())],
      ),
    );
  }
}

class TextWidgetChange extends StatefulWidget {
  const TextWidgetChange({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TextWidgetChangeState();
  }
}

class _TextWidgetChangeState extends State<TextWidgetChange> {
  final List<String> texts = [
    "This is Text 1",
    "This is Text 2",
    "This is Text 3",
    "This is Text 4",
    "This is Text 5",
    "This is Text 6",
    "This is Text 7",
    "This is Text 8",
    "This is Text 9",
    "This is Text 10",
    "This is Text 11",
    "This is Text 12",
    "This is Text 13",
    "This is Text 14",
    "This is Text 15",
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            texts[currentIndex],
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            onPressed: () {
              setState(() {
                currentIndex = (currentIndex + 1) % texts.length;
              });
            },
            child: Icon(Icons.refresh, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
