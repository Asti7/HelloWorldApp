import 'package:flutter/material.dart';
import 'widgets/sexy_tile.dart';

class IntroPage extends StatelessWidget {
  List<String> itemContent = [
    'This app shows the syntax of several coding languages on how to print Hello World. \n\n'
        'This app was a result of a challenge regarding 1 hour builds.\n\n'
        'Hope you appreciate the simplicity of the app 😄 and it can somehow help in having a quick look at how '
        'different programming languages compare with regard to their syntax.\n\n\n'
        '- Developer'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3c4245),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top: 60.0,
                bottom: 10.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Howdy 👋',
                    style: TextStyle(
                        fontFamily: 'Roboto Mono',
                        fontSize: 24.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: <Widget>[
                  ListView(
                    children: <Widget>[
                      SexyTile(
                        color: Color(0xff1a3e59),
                        child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                height: 40.0,
                              ),
                              Text(
                                itemContent[0],
                                style: TextStyle(
                                  fontFamily: 'Roboto Mono',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18.0,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.left,
                                softWrap: true,
                                overflow: TextOverflow.fade,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    left: 30,
                    child: CircleAvatar(
                      backgroundColor: Color(0xff719192),
                      radius: 40.0,
                      child: Icon(
                        Icons.code,
                        color: Color(0xff1a3e59),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.forward,
          size: 30.0,
        ),
        tooltip: 'Accept',
        backgroundColor: Color(0xff1a3e59),
        elevation: 5.0,
        onPressed: () => Navigator.pushNamed(context, 'start_page'),
      ),
    );
  }
}
