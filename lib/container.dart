import 'package:flutter/material.dart';

class Containerr extends StatefulWidget {
  @override
  State<Containerr> createState() => _ContainerrState();
}

class _ContainerrState extends State<Containerr> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  selected = !selected;
                });
              },
              child: Center(
                child: AnimatedContainer(
                  width: selected ? 200 : 100,
                  height: selected ? 100 : 200,
                  color: selected ? Colors.blueGrey : Colors.white,
                  alignment: selected
                      ? Alignment.center
                      : AlignmentDirectional.topCenter,
                  duration: Duration(seconds: 2),curve:Curves.fastOutSlowIn,child:FlutterLogo(size: 75,)
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
