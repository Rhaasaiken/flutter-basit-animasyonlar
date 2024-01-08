import 'package:animasyonlar/align.dart';
import 'package:animasyonlar/builder.dart';
import 'package:animasyonlar/buton.dart';
import 'package:animasyonlar/container.dart';
import 'package:animasyonlar/crossfade.dart';
import 'package:animasyonlar/icon.dart';
import 'package:animasyonlar/list.dart';
import 'package:animasyonlar/opacity.dart';
import 'package:animasyonlar/padding.dart';
import 'package:flutter/material.dart';

import 'defaulttextstyle.dart';
import 'modalbarrier.dart';
import 'physical.dart';
import 'positioned.dart';
import 'rotation.dart';
import 'size.dart';
import 'switcher.dart';
void main() {
  runApp(Animasyonlar());
}

class Animasyonlar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme:
              AppBarTheme(backgroundColor: Colors.black38, elevation: 20,centerTitle: true),
          scaffoldBackgroundColor: Colors.white),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Animasyonlar',
            style: TextStyle(fontSize: 30),
          ),
        ),
        body: Center(
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Buton(animasyon: 'ALİGN', sayfa: Alignn()),
                  Buton(animasyon: 'BUİLDER', sayfa: Builderr()),
                  Buton(animasyon: 'CONTAİNER', sayfa: Containerr()),
                  Buton(animasyon: 'CROSS FADE', sayfa: CrossFade()),
                  Buton(animasyon: 'DEFAULT TEXT STYLE', sayfa:DefaultTextStylee()),
                  Buton(animasyon: 'ICON', sayfa: Iconn()),
                  Buton(animasyon: 'LİST', sayfa: Listt()),
                  Buton(animasyon: 'MODAL BARRİER', sayfa: ModalBarrierr()),
                  Buton(animasyon: 'OPACİTY', sayfa: Opacityy()),
                  Buton(animasyon: 'PADDİNG', sayfa: Paddingg()),
                  Buton(animasyon: 'PHYSİCAL', sayfa: Physicall()),
                  Buton(animasyon: 'POSİTİONED', sayfa: Positionedd()),
                  Buton(animasyon: 'ROTATİON', sayfa: Rotationn()),
                  Buton(animasyon: 'SİZE', sayfa: Sizee()),
                  Buton(animasyon: 'SWİTCHER', sayfa: Switcherr()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}