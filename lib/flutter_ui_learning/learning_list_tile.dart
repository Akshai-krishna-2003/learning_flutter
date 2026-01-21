import 'package:flutter/material.dart';

/// List Tile has 3 major components
/// 1. Leading
/// 2. Title and Subtitle
/// 3. Trailing
class LearningListTile extends StatelessWidget {
  /// From chatgpt
  final Map<int, List<String>> data = {
    1: ['John Doe', '9876543210'],
    2: ['Jane Smith', '9123456789'],
    3: ['Michael Brown', '9988776655'],
    4: ['Emily Davis', '9012345678'],
    5: ['Daniel Wilson', '9090909090'],
    6: ['Sophia Taylor', '9876501234'],
    7: ['James Anderson', '9765432109'],
    8: ['Olivia Thomas', '9654321098'],
    9: ['William Moore', '9543210987'],
    10: ['Ava Martin', '9432109876'],
    11: ['Benjamin Lee', '9321098765'],
    12: ['Isabella Clark', '9210987654'],
    13: ['Lucas Walker', '9109876543'],
    14: ['Mia Hall', '9998887776'],
    15: ['Henry Young', '9887776665'],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          child: Icon(Icons.arrow_back_ios),
          onTap: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: Text(
          'List Tile Example',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          final person = Person.fromMapEntry(data.entries.elementAt(index));
          return ListTile(
            leading: Text(person.personId.toString()),
            title: Text(person.name),
            subtitle: Text(person.name),
            trailing: Icon(Icons.add_box),
          );
        },
        itemCount: data.length,
      ),
    );
  }
}

class Person {
  final int personId;
  final String name;
  final String phno;

  Person({required this.personId, required this.name, required this.phno});

  factory Person.fromMapEntry(MapEntry<int, List<String>> entry) {
    return Person(
      personId: entry.key,
      name: entry.value[0],
      phno: entry.value[1],
    );
  }
}
