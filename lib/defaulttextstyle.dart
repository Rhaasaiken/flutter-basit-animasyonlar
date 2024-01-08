import 'package:flutter/material.dart';

class DefaultTextStylee extends StatefulWidget {
  @override
  State<DefaultTextStylee> createState() => _DefaultTextStyleeState();
}

class _DefaultTextStyleeState extends State<DefaultTextStylee> {
  bool _first = true;
  double _fontSize =60;
  Color _color = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Default Text Style'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 120,
              child: AnimatedDefaultTextStyle(
                duration: Duration(milliseconds: 300),
                style: TextStyle(fontSize: _fontSize,color: _color,fontWeight: FontWeight.bold,),child: Text('FLutter'),
              ),
            ),
            TextButton(onPressed: (){setState(() {
              _fontSize=_first?90:60;
              _color=_first?Colors.blue:Colors.red;
              _first=!_first;
            });}, child: Text('Switch',style: TextStyle(fontSize: 40),))
          ],
        ),
      ),
    );
  }
}
