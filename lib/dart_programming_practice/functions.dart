import 'dart:io';

/// Tutorials followed: https://youtu.be/Afpq1r5G4sc

// Function: A block of code that performs a specific task and can be reused multiple times in a program.

class MyClass{

  // This is a Constructor
  MyClass(this.abc, this.def);
  var myVariable = "Hello from MyClass";
  final abc;
  final def; 

  void printName(String name){
    stdout.write(name);
  }

  int add(int a, int b) => a + b; // Arrow syntax for single line functions

}

void main(){
  var myc = MyClass("Akku", 10);
  myc.printName("Akshai");
  print("\n${myc.myVariable}");
  int sum = myc.add(5, 10);
  print("Sum: $sum");
  MyClass anotherInstance = MyClass("Hello", 20);
  print("abc: ${anotherInstance.abc}, def: ${anotherInstance.def}");

}