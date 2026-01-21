import 'package:flutter/material.dart';

/// So the task is easy
/// 1. Create an array
/// 2.use array.map
/// so it is like array.map((iterated value){return widget})
class MappingListsToWidgets extends StatelessWidget {
  List<String> names = [
    "Alice",
    "Bob",
    "Charlie",
    "Diana",
    "Ethan",
    "Fiona",
    "George",
    "Hannah",
    "Isaac",
    "Julia",
    "Kevin",
    "Laura",
    "Michael",
    "Nina",
    "Oliver",
    "Paula",
    "Quentin",
    "Rachel",
    "Samuel",
    "Tina",
  ];

  MappingListsToWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: names.map((name) {
          return BoxToCreate(name: name);
        }).toList(),
      ),
    );
  }
}

class BoxToCreate extends StatelessWidget {
  final String name;

  const BoxToCreate({super.key, required this.name});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          color: const Color.fromARGB(255, 237, 237, 180),
          child: Center(child: Text(name)),
        ),
        const SizedBox(height: 1),
        const Divider(
          color: Colors.cyanAccent
        ),
      ],
    );
  }
}
