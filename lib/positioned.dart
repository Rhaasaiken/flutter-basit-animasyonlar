import 'package:flutter/material.dart';

class Positionedd extends StatefulWidget {
  @override
  State<Positionedd> createState() => _PositioneddState();
}

class _PositioneddState extends State<Positionedd> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Positioned'),
      ),
      body: SizedBox(
        width: 200,
        height: 350,
        child: Stack(
          children: <Widget>[
            AnimatedPositioned(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selected = !selected;
                  });
                },
                child: Container(decoration: BoxDecoration(color: Colors.orangeAccent,borderRadius: BorderRadius.circular(25)),),
              ),
              duration: Duration(seconds: 2),
              width: selected ? 200 : 50,
              height: selected ? 50 : 200,
              top: selected ? 50 : 150,
              curve: Curves.fastOutSlowIn,
            )
          ],
        ),
      ),
    );
  }
}
