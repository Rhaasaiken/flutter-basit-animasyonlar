import 'package:flutter/material.dart';

class Switcherr extends StatefulWidget {
  @override
  State<Switcherr> createState() => _SwitcherrState();
}

class _SwitcherrState extends State<Switcherr> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Switcher'
            ''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedSwitcher(
              duration: Duration(milliseconds: 500),
              child: Text(
                '$_count',
                style: TextStyle(fontSize: 40),
                key: ValueKey(_count),
              ),

              transitionBuilder: (Widget child,Animation<double>animation){return ScaleTransition(scale: animation,child: child,);},
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _count += 1;
                  });
                },
                child: Text('add'))
          ],
        ),
      ),
    );
  }
}
