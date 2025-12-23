import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// To add images in the flutter application
/// To do this we will have to do this in a way like
/// Have a separate folder named assets in the root folder
/// Then add images there which is usually done
/// Put the image name inside the pubspec.yaml and do pub get
/// And this is how an image has to be added inside the project
/// if you use assets/images --> You will get all the resources inside that path
/// This can be actually done

class LearnToAddImage extends StatefulWidget {
  const LearnToAddImage({super.key});

  @override
  State<StatefulWidget> createState() => _LearnToAddImageState();
}

class _LearnToAddImageState extends State<LearnToAddImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_rounded),
        ),
        title: Text(
          'Add images',
          style: TextStyle(fontSize: 30, color: Colors.red),
        ),
      ),
      body: Center(
        child: SizedBox(
          height: 150,
          width: 150,
          child: Image.asset('assets/images/img1.png'),
        ),
      ), // This is how you add image
      // Image.asset('Path-to-image')
    );
  }
}
