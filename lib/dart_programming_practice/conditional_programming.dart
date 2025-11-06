import 'dart:io';

/// Tutorial: https://youtu.be/K8jQrljrL3M

// Conditional Programming in Dart
// Conditional statements allow you to control the flow of execution based on certain conditions.
// Dart supports various conditional statements including if, else if, else, switch-case, and ternary operator.

void main() {
  stdout.write('Enter a number: ');
  var a = int.parse(stdin.readLineSync()!);

  if (a > 200 && a <= 500) {
    stdout.write('Number is greater than 200 and less than or equal to 500\n');
  } else if (a > 100) {
    stdout.write('Number is greater than 100 but less than or equal to 200\n');
  } else if (a == 100) {
    stdout.write('Number is equal to 100\n');
  } else {
    stdout.write('Number is less than 100\n');
  }

  stdout.write('Enter another number (1-3): ');
  int b = int.parse(
    stdin.readLineSync() ?? '0',
  ); // This is also a conditional programming only

  switch (b) {
    case 1:
      stdout.write('You entered one\n');
      break;
    case 2:
      stdout.write('You entered two\n');
      break;
    case 3:
      stdout.write('You entered three\n');
      break;
    default:
      stdout.write('Number not in range 1-3\n');
  }
}
