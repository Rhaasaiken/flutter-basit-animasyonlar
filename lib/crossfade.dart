import 'package:flutter/material.dart';

class CrossFade extends StatefulWidget {
  @override
  State<CrossFade> createState() => _CrossFadeState();
}

class _CrossFadeState extends State<CrossFade> {
  bool _bool = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated CrossFade'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(),
            TextButton(style: TextButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {
                  setState(() {
                    _bool = !_bool;
                  });
                },
                child: Text('switch',style: TextStyle(fontSize: 30,color: Colors.black),)),
            AnimatedCrossFade(
                firstChild: Text('SA',style: TextStyle(fontSize: 40),),
                secondChild: Text('AS',style: TextStyle(fontSize: 40)),
                crossFadeState: _bool
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: Duration(seconds: 1))
          ],
        ),
      ),
    );
  }
}
