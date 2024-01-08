import 'package:flutter/material.dart';

class Iconn extends StatefulWidget {
  @override
  State<Iconn> createState() => _IconnState();
}

class _IconnState extends State<Iconn> with TickerProviderStateMixin {
  bool _isplay = false;
  late AnimationController _controller;
  void initState() {
    _controller = AnimationController(
      duration: Duration(seconds:1),
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Icon'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                if (_isplay == false) {
                  _controller.forward();
                  _isplay = true;
                } else {
                  _controller.reverse();
                  _isplay = false;
                }
              },
              child: AnimatedIcon(icon:AnimatedIcons.play_pause,progress: _controller,size: 100,),
            )
          ],
        ),
      ),
    );
  }
}
