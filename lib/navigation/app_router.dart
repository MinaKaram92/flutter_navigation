import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:routes_flutter/navigation/routes.dart';
import 'package:routes_flutter/pages/first_page.dart';
import 'package:routes_flutter/pages/home_page.dart';
import 'package:routes_flutter/pages/second_page.dart';

class AppRouter {
  /* static Route<dynamic>? generateRoute(RouteSettings settings) {
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
  } */

  static final generateRoute = GoRouter(routes: [
    GoRoute(path: Routes.homepage, builder: (context, state) => HomePage()),
    GoRoute(path: Routes.firstPage, builder: (context, state) => FirstPage()),
    GoRoute(path: Routes.secondPage, builder: (context, state) => SecondPage()),
  ]);
}
