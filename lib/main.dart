import 'package:flutter/material.dart';

import 'screens/auth/login.dart';

void main() => runApp(Wamda());

class Wamda extends StatelessWidget {
  const Wamda({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Poppins',
          backgroundColor: Color(0xff151824),
          primaryColor: Color(0xfffff350),
          accentColor: Color(0xfff57c00),
          cardColor: Color(0xff3F455A)),
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
