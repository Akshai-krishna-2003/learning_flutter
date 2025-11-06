/// Tutorial: https://youtu.be/nUGXH5p7-P0
/// Loops in Dart programming language

void main(){
  print('1');
  print('2');
  print('3');
  print('4');
  print('5');
  // Instead of writing above code, we can use loops to achieve the same functionality

  // For Loop
  for(int i=1; i<=5; i++){
    print(i);
  }
  // Here, i is the loop variable which starts from 1 and increments by 1 until it reaches 5

  // While Loop
  int j = 1;
  while(j <= 5){
    print(j);
    j++;
  }
  // Here, j is the loop variable which starts from 1 and increments by 1 until it reaches 5

  // Do-While Loop
  int k = 1;
  do{
    print(k);
    k++;
  }while(k <= 5); 
  // Here, k is the loop variable which starts from 1 and increments by 1 until it reaches 5

  // Looping through a list 
  List<String> fruits = ['Apple', 'Banana', 'Orange', 'Grapes', 'Mango'];
  for(String fruit in fruits){
    print(fruit);
  }
  
}