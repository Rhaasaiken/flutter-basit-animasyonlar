import 'package:flutter/material.dart';

class Buton extends StatelessWidget {
  String animasyon;
  Widget sayfa;
  Buton({required this.animasyon, required this.sayfa});
  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.all(5),
        height: 100,
        width: 300,
        child: TextButton(
          onPressed: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=>sayfa)),
          child: Text(
            '$animasyon',
            style: TextStyle(color: Colors.black),
          ),
          style: TextButton.styleFrom(
              elevation: 10, backgroundColor: Colors.white),
        ));
  }
}

