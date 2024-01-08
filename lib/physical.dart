import 'package:flutter/material.dart';

class Physicall extends StatefulWidget {
  const Physicall({super.key});

  @override
  State<Physicall> createState() => _PhysicallState();
}

class _PhysicallState extends State<Physicall> {
  bool isFlat = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Physical'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            AnimatedPhysicalModel(
              child: SizedBox(
                height: 120,
                width: 120,
                child: Icon(Icons.android_outlined),
              ),
              shape: BoxShape.rectangle,
              elevation: isFlat ? 0 : 10,
              color: Colors.white,
              shadowColor: Colors.black,
              duration: Duration(
                milliseconds: 200,
              ),
            ),
            ElevatedButton(onPressed: (){setState(() {
              isFlat=!isFlat;
            });}, child: Text('click'))
          ],
        ),
      ),
    );
  }
}
