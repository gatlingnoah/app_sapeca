import 'package:flutter/material.dart';

class Sobre extends StatefulWidget {
  @override
  _SobreState createState() => _SobreState();
}

class _SobreState extends State<Sobre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: FlatButton(
            onPressed: () => debugPrint('presrt'), child: Text('sobre')),
      ),
    );
  }
}
