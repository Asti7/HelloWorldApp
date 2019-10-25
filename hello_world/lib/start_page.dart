import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3c4245),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 120),
              child: FlatButton(
                onPressed: () => Navigator.pushNamed(context, 'main_page'),
                child: Card(
                  elevation: 10,
                  color: Color(0xff1a3e59),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Container(
                    height: 100,
                    width: 220,
                    child: Center(
                      child: Text(
                        'Hello World',
                        style: TextStyle(
                            fontFamily: 'Roboto Mono',
                            fontSize: 30,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            FlatButton(
              onPressed: () => Navigator.pushNamed(context, 'about_page'),
                          child: Card(
                elevation: 10,
                color: Color(0xff1a3e59),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Container(
                  height: 100,
                  width: 220,
                  child: Center(
                    child: Text(
                      'About',
                      style: TextStyle(
                          fontFamily: 'Roboto Mono',
                          fontSize: 30,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
