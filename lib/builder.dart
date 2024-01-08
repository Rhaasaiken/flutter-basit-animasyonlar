import 'dart:math';
import 'package:flutter/material.dart';

class Builderr extends StatefulWidget {
  @override
  State<Builderr> createState() => _BuilderrState();
}

class _BuilderrState extends State<Builderr> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: Duration(seconds: 10),
    vsync: this,
  )..repeat();
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Builder'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: _controller,
              builder: (BuildContext context, Widget? child) {
                return Transform.rotate(
                  angle: _controller.value * 2.0*pi,
                  child:FlutterLogo(size: 100,),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
