import 'package:flutter/material.dart';
import 'package:tag/pages/authpage.dart';
import 'package:tag/pages/homepage.dart';

import '../pages/authwrapper.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const AuthWrapper());

      case '/login':
        return MaterialPageRoute(builder: (_) => const Authpage());

      case '/home':
        return MaterialPageRoute(builder: (_) => const Homepage());
    }

    return MaterialPageRoute(builder: (_) => const AuthWrapper());
  }
}
