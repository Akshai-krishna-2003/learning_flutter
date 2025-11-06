/// Tutorial: https://youtu.be/gnfyM0xUNNA

// Final vs Const in Dart
// Final: A variable declared with final can be set only once and its value can be determined
// at runtime. It is immutable after being assigned.
// Const: A variable declared with const is a compile-time constant. Its value must be known
// at compile time and cannot be changed thereafter.

void main(){
  final DateTime now = DateTime.now(); // Value determined at runtime
  print('Final value (runtime): $now');

  const int maxItems = 100; // Compile-time constant
  print('Const value (compile-time): $maxItems');

  // Uncommenting the following lines will cause errors
  // now = DateTime.now(); // Error: Cannot assign to a final variable
  // maxItems = 200; // Error: Cannot assign to a const variable

  final List<int> finalList = [1, 2, 3];
  finalList.add(4); // Valid: Modifying the contents of the list
  print('Final list after modification: $finalList');
  finalList[0] = 10; // Valid: Modifying the contents of the list
  print('Final list after updating first element: $finalList');
  // finalList = [5, 6, 7]; // Error: Cannot assign a new list to a final variable --> uncomment to see error

  const List<int> constList = [1, 2, 3];
  // constList[0] = 10; // Error: Cannot modify an unmodifiable list --> uncomment to see error
  print('Const list after attempting to update first element: $constList');

  // I can do compile time constant expressions with const
  const int area = 10 * 20; // Valid
  print('Const area (compile-time expression): $area');

  // const DateTime compileTimeNow = DateTime.now(); // Error: Cannot use DateTime.now() in a const context --> uncomment to see error
  // But I can use const with literals and other const values
  const String greeting = 'Hello, World!';
  print('Const greeting: $greeting');

  /// Summary:
  /// final: assigned once, value can be determined at runtime, mutable contents if it's a collection
  /// const: compile-time constant, immutable, cannot modify contents if it's a collection
  /// Use final when the value is known at runtime and const when the value is known at compile time.
  /// Use const for performance optimization when dealing with constant values.
  /// 
  /// For collections, final allows modification of contents, while const makes the collection immutable.
  /// Choose based on whether you need runtime flexibility (final) or compile-time immutability (const).
  /// Use const constructors for creating constant instances of classes when possible.
  /// Prefer const for values that won't change to improve performance and reduce memory usage.
  /// Use final for variables that need to be initialized at runtime but should not change afterward.
  /// Avoid using var or dynamic for variables that should be constant; prefer final or const instead.
}