import 'package:flutter/material.dart';

class Alignn extends StatefulWidget {
  @override
  State<Alignn> createState() => _AlignnState();
}

class _AlignnState extends State<Alignn> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Align'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  selected = !selected;
                });
              },
              child: Center(
                  child: Container(
                width: double.infinity,
                height: 200,
                color: Colors.black,
                child: AnimatedAlign(
                  alignment:
                      selected ? Alignment.topRight : Alignment.bottomLeft,
                  duration: Duration(seconds: 1),
                  curve: Curves.fastOutSlowIn,child: FlutterLogo(size: 50,),
                ),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
