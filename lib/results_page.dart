import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI CALCULATOR"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Your Result",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600),
              ),
            ),
            Expanded(
              child: ReusableCard(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      "OVERWEIGHT",
                      style: kBmiStatusTextStyle,
                    ),
                    Text(
                      "28.4",
                      style: kBmiNumberConstant,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        "You have a higher than normal body weight. Try to exercise more.",
                        style: kBmiDescriptionStyle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                color: kActiveCardColor,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                child: Center(
                  child: Text(
                    "RE-CALCULATE",
                    style: kLargeButtonTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
                color: kCalculateButtonColor,
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
                padding: EdgeInsets.only(bottom: 20),
                height: kBottomContainerHeight,
              ),
            )
          ],
        ));
  }
}
