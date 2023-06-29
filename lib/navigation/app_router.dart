import 'package:flutter/material.dart';
import 'package:routes_flutter/navigation/routes.dart';
import 'package:routes_flutter/pages/first_page.dart';
import 'package:routes_flutter/pages/home_page.dart';
import 'package:routes_flutter/pages/second_page.dart';

class AppRouter {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homepage:
        return MaterialPageRoute(builder: (_) => HomePage());
      case Routes.firstPage:
        return MaterialPageRoute(builder: (_) => FirstPage());
      case Routes.secondPage:
        return MaterialPageRoute(builder: (_) => SecondPage());
      default:
        return MaterialPageRoute(builder: (_) => HomePage());
    }
  }
}
