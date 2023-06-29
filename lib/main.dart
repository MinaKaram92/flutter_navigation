import 'package:flutter/material.dart';
import 'package:routes_flutter/navigation/app_router.dart';
import 'package:routes_flutter/navigation/routes.dart';
import 'package:routes_flutter/pages/first_page.dart';
import 'package:routes_flutter/pages/home_page.dart';
import 'package:routes_flutter/pages/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: AppRouter.generateRoute().routeInformationParser,
      routerDelegate: AppRouter.generateRoute().routerDelegate,
      routeInformationProvider:
          AppRouter.generateRoute().routeInformationProvider,
    );

    /* MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // navigation using navigator.of().push()
      // home: HomePage(),
      // navigation using navigator.of().pushNamed()
      /* routes: {
        Routes.homepage: (_) => HomePage(),
        Routes.firstPage: (_) => FirstPage(),
        Routes.secondPage: (_) => SecondPage(),
      }, */
      initialRoute: Routes.homepage,
      onGenerateRoute: AppRouter.generateRoute,


    ); */
  }
}
