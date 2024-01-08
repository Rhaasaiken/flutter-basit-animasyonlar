import 'package:flutter/material.dart';
import 'package:async/async.dart';

class ModalBarrierr extends StatefulWidget {
  const ModalBarrierr({super.key});

  @override
  State<ModalBarrierr> createState() => _ModalBarrierrState();
}

class _ModalBarrierrState extends State<ModalBarrierr>
    with SingleTickerProviderStateMixin {
  bool _isPressed = false;
  late Widget _animatedModalBarrier;
  late AnimationController _animationController;
  late Animation<Color?> _colorAnimation;
  void initState() {
    ColorTween _colorTween = ColorTween(
        begin: Colors.orangeAccent.withOpacity(0.5),
        end: Colors.blueGrey.withOpacity(0.5));
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    _colorAnimation = _colorTween.animate(_animationController);
    _animatedModalBarrier = AnimatedModalBarrier(
      color: _colorAnimation,
      dismissible: true,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Modal Barrier'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 100,
                width: 250,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orangeAccent),
                        onPressed: () {
                          setState(() {
                            _isPressed = true;
                          });
                          _animationController.reset();
                          _animationController.forward();
                          Future.delayed(
                            Duration(seconds: 1),
                            () {
                              setState(
                                () {
                                  _isPressed = false;
                                },
                              );
                            },
                          );
                        },
                        child: Text('Press')),
                    if (_isPressed) _animatedModalBarrier,
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
