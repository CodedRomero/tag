import 'package:flutter/material.dart';
import 'package:tag/pages/authpage.dart';
import 'package:tag/pages/homepage.dart';
import 'package:tag/pages/new_dept.dart';

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

      case '/new':
        return MaterialPageRoute(builder: (_) => const NewDept());
    }

    return MaterialPageRoute(builder: (_) => const AuthWrapper());
  }
}
