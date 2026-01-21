import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

/// List view is a special type of widget which is used to show items in a linear manner
/// It is a scrollable widget by default
/// if scroll direction == vertical --> top to bottom
/// else if scroll direction == horizontal --> left to right
/// Main use of ListView is for using multiple children at a time
/// Another use is the use of ListView.builder
class LearnListView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LearnListViewState();
}

class LearnListViewState extends State<LearnListView> {
  final url = Uri.parse('https://jsonplaceholder.typicode.com/todos');

  List<Todo> todos = [];

  int responseCode = 0;

  Future<void> getData() async {
    final response = await http.get(url);

    setState(() {
      responseCode = response.statusCode;
    });
    
    if (responseCode == 200) {
      final List decoded = jsonDecode(response.body);
      setState(() {
        todos = decoded.map((e) => Todo.fromJson(e)).toList();
      });
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    if (responseCode == 200) {
      return Scaffold(
        appBar: AppBar(title: Text('To Do List')),
        body: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context, index) {
            final todo = todos[index];
            return ToDoView(title: todo.title, ifCompleted: todo.completed);
          },
        ),
      );
    }
    
    return Center(
      child: Text(
        'FAAAA RESPONSE IS $responseCode',
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class ToDoView extends StatelessWidget {
  final String title;
  final bool ifCompleted;

  const ToDoView({required this.title, required this.ifCompleted, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.all(10),
      child: CheckboxListTile(
        value: ifCompleted,
        onChanged: (bool? value) {},
        title: Text(title),
        controlAffinity: ListTileControlAffinity.leading,
      ),
    );
  }
}

class Todo {
  final int id;
  final String title;
  final bool completed;

  Todo({required this.id, required this.title, required this.completed});

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      id: json['id'],
      title: json['title'],
      completed: json['completed'],
    );
  }
}
