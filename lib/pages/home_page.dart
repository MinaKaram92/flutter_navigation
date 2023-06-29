import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:routes_flutter/navigation/routes.dart';
import 'package:routes_flutter/pages/first_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('home page'),
            MaterialButton(
              onPressed: () {
                /* Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => FirstPage())); */
                Navigator.of(context).pushNamed(
                  Routes.firstPage,
                  arguments: {
                    'text1': 'this text 1 from home page',
                    'text2': 'this text 2 from home page',
                  },
                );
              },
              child: Text('go to first page'),
            ),
          ],
        ),
      ),
    );
  }
}
