/// Tutorial video: https://youtu.be/4e5tqRXGYQc

// What are maps?: Dictionary type data structure that holds key-value pairs
// In flutter, maps are represented by Map<K, V> class where K is the type of keys and V is the type of values.
// Keys are unique and used to access values in the map.
// Maps are unordered collections, meaning the order of key-value pairs is not guaranteed.
// Maps are mutable, allowing addition, removal, and modification of key-value pairs.
// Maps can hold any data type as keys and values, including custom objects.

// var map_var = {key1: value1, key2: value2}; // Dynamic map
// Map<KeyType, ValueType> map_name = {key1: value1, key2: value2}; // Typed map
// Map<KeyType, ValueType> map_name = Map(); // Empty map
// Map<KeyType, ValueType> map_name = Map.from({key1: value1, key2: value2}); // Map from another map
// Map<KeyType, ValueType> map_name = Map.of(another_map); // Map from another map
// Map<KeyType, ValueType> map_name = Map.fromIterable(iterable,
//     key: (item) => key_expression, value: (item) => value_expression); // Map from iterable

void main() {
  var map_name = {
    'key1': 'Value 1',
    2: 'Value 2',
    3: 100,
    4: true,
    'Key 5': 3.14,
  };
  print(map_name);
  print(map_name['key1']);
  print(map_name[45]); // null since key 45 doesn't exist
  map_name['key1'] = 'Updated Value 1'; // Update value for key 'key1'
  map_name[6] = 'New Value'; // Add new key-value pair
  print(map_name);

  var mapName = Map();
  mapName['A'] = 1;
  mapName['B'] = 2;
  print(mapName);

  // Whenever we use json data, it is represented in the form of maps in dart/flutter

  print(map_name.length);
  print(map_name.isEmpty);
  print(map_name.isNotEmpty);
  map_name.remove(2); // Remove key-value pair with key 2
  print(map_name);
  print(map_name.containsKey(3)); // true
  print(map_name.containsValue(100)); // true
  print(map_name.keys);
  print(map_name.values);
  print(map_name.keys.runtimeType); // Iterable<dynamic>
  List<dynamic> keysList = map_name.keys.toList();
  print(keysList.runtimeType); // List<dynamic>

  mapName.clear();
  print(mapName);
}
