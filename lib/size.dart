import 'package:flutter/material.dart';
class Sizee extends StatefulWidget {

  @override
  State<Sizee> createState() => _SizeeState();
}

class _SizeeState extends State<Sizee> {
  double _size=300;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Size'),
      ),
      body:GestureDetector(onTap: (){setState(() {
        _size=_size==300?100:300;
      });},
        child: Container(color: Colors.white,child: AnimatedSize(curve: Curves.easeIn,duration: Duration(seconds: 1),child: FlutterLogo(size: _size,),),),
      ),
    );
  }
}
