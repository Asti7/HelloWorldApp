import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CodeTile extends StatelessWidget {
  CodeTile(
      {this.height,
      this.width,
      @required this.langName,
      @required this.code,
      this.image,this.onPressed});

  final double height;
  final double width;
  final String langName;
  final String code;
  final String image;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Card(
          elevation: 0,
          color: Color(0xff3c4245),
          child: Container(
            height: height + 50,
            width: width + 10,
          ),
        ),
        Card(
          elevation: 10,
          color: Color(0xff5f6769),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: Container(
            height: height,
            width: width,
            child: Column(
              children: <Widget>[
                Text(
                  langName,
                  style: TextStyle(fontSize: 40, fontFamily: 'Roboto Mono'),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  code,
                  style: TextStyle(
                    fontFamily: 'Roboto Mono',
                    fontSize: 13,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: 5,
          bottom: 5,
          child: FlatButton(
            onPressed: onPressed,
            child: Container(
              height: 80,
              width: 80,
              child: Image.asset('images/$image'),
            ),
          ),
        ),
      ],
    );
  }
}
