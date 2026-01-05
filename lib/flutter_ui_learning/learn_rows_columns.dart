import 'package:five_pointed_star/five_pointed_star.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// This is a tutorial to properly use rows and columns in flutter
/// To add multiple rows or columns across the main painting area
/// To arrange widgets horizontally use row widget
/// To arrange widgets vertically use column widgets
/// MainAxisAlignment and CrossAxisAlignment changes from rows and columns
/// Row works for MainAxisAlignment (Horizontal) and CrossAxisAlignment (Vertical)
/// Row works for MainAxisAlignment (Vertical) and CrossAxisAlignment (Horizontal)
/// You can align with main and cross axis and you can do spacing and everything else

class LearnRowsColumns extends StatefulWidget {
  const LearnRowsColumns({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LearnRowsColumns();
  }
}

class _LearnRowsColumns extends State<LearnRowsColumns> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.amberAccent,
        centerTitle: true,
        title: Text.rich(
          TextSpan(
            text: 'Order Food',
            style: TextStyle(
              color: Colors.black,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromRGBO(235, 247, 167, 1),
          width: double.infinity,
          // height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 180,
                width: 200,
                child: Image.asset('assets/images/img2.png'),
              ),
              Text(
                'KFC Wednesday Bucket',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(255, 19, 19, 1),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  child: Text(
                    """
                      Description: ABOUT KFC
                      KFC (Kentucky Fried Chicken) is a world-famous fast-food restaurant brand known for its crispy and flavorful fried chicken, prepared using a secret blend of 11 herbs and spices.
                      
                      WHAT MAKES KFC SPECIAL
                      KFC is loved for its bold taste, crunchy texture, and iconic recipe created by Colonel Harland Sanders. The brand delivers consistent quality and comfort food across the globe.
                      
                      MENU HIGHLIGHTS
                      KFC’s menu includes fried chicken buckets, burgers, wraps, popcorn chicken, crispy fries, and classic sides like coleslaw and mashed potatoes, along with regional specialties in some countries.
                      
                      GLOBAL PRESENCE
                      With thousands of restaurants in over 100 countries, KFC serves millions of customers every day while maintaining its original identity and adapting to local tastes.
                      """,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black87,
                      
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Give your Ratings: ',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  FivePointedStar(onChange: (count) {}),
                ],
              ),
              const SizedBox(height: 100.0),
            ],
          ),
        ),
      ),
    );
  }
}
