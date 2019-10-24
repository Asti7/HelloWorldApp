import 'package:flutter/material.dart';
import 'package:hello_world/widgets/code_tile.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff3c4245),
        body: Center(
          child: CodeTile(
            height: 400,
            width: 350,
            langName: 'Swift',
            code: 'import Swift\n\n'
                'print(\'Hello World\')',
                image: 'swiftlogo.png',
          ),
        ));
  }
}

