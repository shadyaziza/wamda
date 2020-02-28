import 'package:flutter/material.dart';
import 'package:wamda/screens/auth/signup.dart';
import 'package:wamda/screens/home/home_view.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.Home:
        return MaterialPageRoute(builder: (_) => HomeView());
      case RoutePaths.Signup:
        return MaterialPageRoute(builder: (_) => SignupScreen());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}

class RoutePaths {
  static const String Home = 'home';
  static const String Signup = 'signup';
}
