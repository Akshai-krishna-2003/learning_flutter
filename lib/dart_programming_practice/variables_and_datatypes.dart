
/// Tutorial 1: https://youtu.be/ndchTCcp_Tc
/// Tutorial 2: https://youtu.be/jPYxYxdZf1M

// variables --> we know this (containers to store data values)
// namespace --> a container that holds a set of identifiers (variables, functions, etc.) and allows them to be organized and accessed in a controlled way.
// data types --> we know this (int, double, String, bool, var, dynamic, const, final, etc.)
// identifiers --> the names we give to variables, functions, classes, etc. in our code.

void main() {
  // Declaration of variables
  int age; // This should hold integer values
  int? nage; // This can be nullable and can hold null value
  age = 5; // Assigning value to age variable
  print(age);
  print(nage); // prints null
  age = 10; // Re-assigning value to age variable
  print(age);
  nage = 15; // Assigning value to nullable variable
  print(nage);
  String name = "Akshai"; // inline declaration and assignment
  print(name);
  name = "John";
  print(name);

  // age = 12354698745458456599; // This will give error as the value exceeds the limit of int data type
  // print(age);

  BigInt bigNumber = BigInt.parse(
      '1234567890123456789012345678901234567890'); // For very large integers
  print(bigNumber);
  print(bigNumber.runtimeType); // To check the data type of variable

  // var and dynamic data types
  var city = "New York"; // Compiler infers the data type as String
  print(city);
  // city = 123; // This will give error as city is inferred as String type
  city = "Los Angeles"; // Valid
  print(city);

  var abcd; // Compiler infers the data type as dynamic coz initialization is not done
  abcd = "Hello";
  print(abcd);
  abcd = 123; // Valid as abcd is dynamic type
  print(abcd);

  dynamic xyz; // Explicitly declared as dynamic type
  xyz = "World";
  print(xyz);
  xyz = 456;
  print(xyz);

  // This is valid too but not recommended
  dynamic pqr = "Dart Programming"; // dynamic type
  print(pqr);
  pqr = 789;
  print(pqr);
}
