import 'package:flutter/material.dart';

class LearnScrollview extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(8),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              color: Colors.amberAccent, 
              // margin: const EdgeInsets.all(8),
            ),
            Container(
              height: 200,
              color: const Color.fromARGB(255, 33, 175, 20)
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      // height: 200,
                      width: 50,
                      color: Colors.deepOrange,
                    ),
                    Container(
                      height: 200,
                      width: 50,
                      color: Colors.blue,
                    ),
                    Container(
                      height: 200,
                      width: 50,
                      color: Colors.deepOrange,
                    ),
                    Container(
                      height: 200,
                      width: 50,
                      color: Colors.blue,
                    ),
                    Container(
                      height: 200,
                      width: 50,
                      color: Colors.deepOrange,
                    ),
                    Container(
                      height: 200,
                      width: 50,
                      color: Colors.blue,
                    ),
                    Container(
                      height: 200,
                      width: 50,
                      color: Colors.deepOrange,
                    ),
                    Container(
                      height: 200,
                      width: 50,
                      color: Colors.blue,
                    ),
                    Container(
                      height: 200,
                      width: 50,
                      color: Colors.deepOrange,
                    ),
                    Container(
                      height: 200,
                      width: 50,
                      color: Colors.blue,
                    ),
                    Container(
                      height: 200,
                      width: 50,
                      color: Colors.deepOrange,
                    ),
                    Container(
                      height: 200,
                      width: 50,
                      color: Colors.blue,
                    ), 
                  ],
                ),
              ),
            ),
            Container(
              height: 200,
              color: const Color.fromARGB(255, 255, 64, 144)
            ),
            Container(
              height: 200,
              color: const Color.fromARGB(255, 226, 255, 64)
            ),
            Container(
              height: 200,
              color: const Color.fromARGB(255, 212, 32, 32)
            ),
            Container(
              height: 200,
              color: const Color.fromARGB(255, 255, 255, 255)
            ),
            Container(
              height: 200,
              color: const Color.fromARGB(255, 0, 255, 234)
            ),
            Container(
              height: 200,
              color: const Color.fromARGB(255, 255, 64, 252)
            ),
            Container(
              height: 200,
              color: Colors.amberAccent
            ),
          ],
        ),
      ),
    );
  }
  
}