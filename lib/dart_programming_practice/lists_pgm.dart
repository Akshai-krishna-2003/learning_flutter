import 'dart:io';

/// Tutorial followed: https://youtu.be/eqFGKEoY1zA
void main() {
  // Growable Lists
  List<Object> myList =
      []; // Creating an empty list that can hold any type of data
  myList.add(10); // Adding integer
  myList.add("Hello"); // Adding string
  myList.add(3.14); // Adding double
  myList.add(true); // Adding boolean

  for (Object i in myList) {
    stdout.write('$i \n');
  }

  // Fixed size list
  var list2 = [10, 20, 30, 40, 50];
  for (int i in list2) {
    stdout.write('$i \n');
  }
  // Adding at end
  list2.add(60);

  stdout.write('\n Vals');
  for (int i in list2) {
    stdout.write('$i \n');
  }

  // Adding in middle
  list2.insert(1, 10);

  // Updating value
  list2[2] = 25;

  // Length of function
  list2.length;

  // Is empty and is not empty
  list2.isEmpty;
  list2.isNotEmpty;

  // Others we can learn as we go ahead
}
