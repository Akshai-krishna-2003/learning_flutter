import 'dart:io';

/// Tutorial followed: https://youtu.be/iffK7bIFkG8

void main(){
  // Creating an object of Human class
  print('Enter the name of human: ');
  String name = stdin.readLineSync() ?? 'Noname';
  print('Enter the age of human: ');
  int age = int.parse(stdin.readLineSync() ?? '0');
  stdout.write('Enter the height of human (in meters): ');
  double height = double.parse(stdin.readLineSync() ?? '0.0');
  stdout.write('Enter the weight of human (in kgs): ');
  double weight = double.parse(stdin.readLineSync() ?? '0.0');
  print('Is the human happy? (true/false): ');
  bool isHappy = (stdin.readLineSync() ?? 'false').toLowerCase() == 'true';
  print('Enter the gender of human: ');
  String genderInput = stdin.readLineSync() ?? 'Unknown';
  bool isMan;
  if (genderInput == 'male') {
    isMan = true;
  } else {
    isMan = false;
  }

  Human human1 = Human(age, name, height, weight, isHappy, isMan);
  human1.eat('apple');
  human1.sleep(8);
  human1.isHappyStatus();
}

class Human {
  int age;
  String name;
  double height;
  double weight;
  bool isHappy;
  bool isMan;

  Human(
    this.age,
    this.name,
    this.height,
    this.weight,
    this.isHappy,
    this.isMan,
  );

  void eat(String food) {
    print('$name is eating $food');
  }

  void sleep(int hours) {
    print('$name is sleeping for $hours hours');
  }

  void isHappyStatus() {
    if (isHappy) {
      print('$name is happy');
    } else {
      print('$name is not happy');
    }
  }
}
