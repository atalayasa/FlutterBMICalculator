import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  final Function tapMethod;
  ReusableCard({@required this.color, this.cardChild, this.tapMethod});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tapMethod,
          child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(10), color: color),
      ),
    );
  }
}