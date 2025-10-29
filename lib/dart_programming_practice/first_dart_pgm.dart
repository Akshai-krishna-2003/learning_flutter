import 'dart:io';

/// Tutorial followed: https://youtu.be/jEylGBflNCs
/// https://youtu.be/fnpD5NCzIIo

// Start of any project in dart language
void main() {
  print("Hello world, this is my first dart program");

  stdout.write("Enter your name: "); // To print in same line
  var name = stdin.readLineSync(); // To get inputs in cmd
  print("Welcome $name to Dart programming");
}

// To run a dart file we do this: dart run file_name.dart
