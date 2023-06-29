import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:routes_flutter/navigation/routes.dart';
import 'package:routes_flutter/pages/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Map data = ModalRoute.of(context)?.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        title: Text('First page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('first page'),
            MaterialButton(
              onPressed: () {
                /* Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => SecondPage())); */
                Navigator.of(context).pushNamed(Routes.secondPage);
              },
              child: Text('go to second page'),
            ),
            // Text(data['text1']),
            // Text(data['text2']),
          ],
        ),
      ),
    );
  }
}
