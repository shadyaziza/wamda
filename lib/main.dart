import 'package:flutter/material.dart';

void main() => runApp(Wamda());

class Wamda extends StatelessWidget {
  const Wamda({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins',
        backgroundColor: Color(0xff1c313a),
        primaryColor: Color(0xffff1744),
        accentColor: Color(0xff78002e),
      ),
      home: RedirectionWidget(),
    );
  }
}

class RedirectionWidget extends StatelessWidget {
  const RedirectionWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoginScreen();
  }
}
