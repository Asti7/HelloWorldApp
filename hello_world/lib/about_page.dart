import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  List<String> itemContent = [
    'This app was a result of a challenge about making an iOS app within 2 hours. '
        'The app is written in Dart code using the awesome Flutter framework by Google, '
        'this app was an attempt for me to understand the Flutter framework and as a beginner developer experience the whole '
        'process of developing an app and launching it to the App Store.\n\n\n'
        'The source code of this app is on Github and is open source. ⭐️ the repo as it really helps out a lot !\n\n'
        '- Astitva (Developer)',

        '- Flutter community\n'
        '- Internet commons for logos\n\n'
        '- Pdf resources\n'
        '   - CodeConquest.com\n'
        '   - nostarchpress.com\n'
        '   - Greg Book\n'
        '   - The coding guys\n'
        '   - raywenderlich.com\n'
        '   - jgbailey@codeslower.com\n'
        '   - edurekka\n'
        '   - AddedBytes.com\n'
        
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3c4245),
      body: Center(
        child: Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      top: 60, bottom: 10, left: 10, right: 10),
                  child: Card(
                    elevation: 10.0,
                    color: Color(0xff1a3e59),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Container(
                      height: 400,
                      width: 350,
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 24),
                            Text(
                              'About',
                              style: TextStyle(
                                  fontSize: 24,
                                  fontFamily: 'Roboto Mono',
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 24),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, right: 10),
                              child: Text(
                                itemContent[0],
                                style: TextStyle(
                                  fontFamily: 'Roboto Mono',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.0,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.left,
                                softWrap: true,
                                overflow: TextOverflow.fade,
                              ),
                            ),
                            
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                       bottom: 10, left: 10, right: 10),
                  child: Card(
                    elevation: 10.0,
                    color: Color(0xff1a3e59),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Container(
                      height: 350,
                      width: 350,
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 24),
                            Text(
                              'Credits',
                              style: TextStyle(
                                  fontSize: 24,
                                  fontFamily: 'Roboto Mono',
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 24),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, right: 10),
                              child: Text(
                                itemContent[1],
                                style: TextStyle(
                                  fontFamily: 'Roboto Mono',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.0,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.left,
                                softWrap: true,
                                overflow: TextOverflow.fade,
                              ),
                            ),
                            
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 30,
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(Icons.arrow_back),
                color: Color(0xff5f6769),
                iconSize: 30,
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(
          EvaIcons.github,
          size: 30.0,
        ),
        tooltip: 'Github repo ',
        backgroundColor: Color(0xff719192),
        elevation: 5.0,
        onPressed: () => launch("https://github.com/Asti7/HelloWorldApp"),
      ),
    );
  }
}
