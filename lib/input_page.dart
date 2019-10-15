import 'package:flutter/material.dart';

const double bottomContainerHeight = 80.0;
const Color cardViewColor = Color(0xFF1D1E33);
const Color calculateButtonColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: new ReusableCard(
                  color: cardViewColor,
                )),
                Expanded(
                    child: new ReusableCard(
                  color: cardViewColor,
                )),
              ],
            ),
          ),
          Expanded(
              child: new ReusableCard(
            color: cardViewColor,
          )),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: new ReusableCard(
                  color: cardViewColor,
                )),
                Expanded(
                    child: new ReusableCard(
                  color: cardViewColor,
                )),
              ],
            ),
          ),
          Container(
            color: calculateButtonColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color color;
  ReusableCard({@required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: color),
    );
  }
}
