import 'package:flutter/material.dart';

class Rotationn extends StatefulWidget {
  const Rotationn({super.key});

  @override
  State<Rotationn> createState() => _RotationnState();
}

class _RotationnState extends State<Rotationn> {
  double turns = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Rotation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(50),
              child: AnimatedRotation(
                turns: turns,
                duration: Duration(seconds: 1),
                child: FlutterLogo(
                  size: 100,
                ),
              ),
            ),
            ElevatedButton(onPressed: (){setState(() {
              turns+=1/4;
            },);}, child: Text('Rotate Logo'),style: ElevatedButton.styleFrom(backgroundColor: Colors.orangeAccent),)
          ],
        ),
      ),
    );
  }
}
