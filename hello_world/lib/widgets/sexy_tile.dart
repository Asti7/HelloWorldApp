import 'package:flutter/material.dart';

class SexyTile extends StatelessWidget {
  const SexyTile({
    this.child,
    this.color,
  });
  final Widget child;
  final Color color;

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      child: Material(
        color: color,
        elevation: 10.0,
        borderRadius: BorderRadius.circular(15.0),
        
        // just to have a child for material
        child: InkWell(
            child: child,
            borderRadius: BorderRadius.circular(15.0),
            onTap: null),
      ),
    );
  }
}
