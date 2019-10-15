import 'package:flutter/material.dart';
import 'constants.dart';


class ReusableCardChild extends StatelessWidget {
  final String title;
  final IconData icon;
  ReusableCardChild({@required this.title, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          title,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
