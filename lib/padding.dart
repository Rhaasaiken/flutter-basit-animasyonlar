import 'package:flutter/material.dart';

class Paddingg extends StatefulWidget {
  @override
  State<Paddingg> createState() => _PaddinggState();
}

class _PaddinggState extends State<Paddingg> {
  double padValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Padding'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orangeAccent),
                onPressed: () {
                  setState(
                    () {
                      padValue=padValue == 0 ? 100 : 0;
                    },
                  );
                },
                child: Text('Change Padding'),),
            Text('Padding = $padValue'),
            AnimatedPadding(
              padding: EdgeInsets.all(padValue),
              duration: Duration(seconds: 2),
              curve: Curves.easeInOut,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4,
                color: Colors.orangeAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
