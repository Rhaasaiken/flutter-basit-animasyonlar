import 'package:flutter/material.dart';

class Opacityy extends StatefulWidget {
  @override
  State<Opacityy> createState() => _OpacityyState();
}

class _OpacityyState extends State<Opacityy> {
  double opacityLevel = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Animated Opacity'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              AnimatedOpacity(
                opacity: opacityLevel,
                duration: Duration(seconds:2),
                child: Image.asset(height: 300,
                    'images1/opacity.pic.png'
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(
                          () {
                        opacityLevel = opacityLevel == 0 ? 1 : 0;
                      },
                    );
                  },
                  child: Text('Byee Byee ')),
            ],
          ),
        ),
      ),
    );
  }
}