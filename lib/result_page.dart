import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'reuseable_card.dart';

class ResultsPage extends StatelessWidget {

final String bmi;
final String result;
final String interpretation;
ResultsPage({this.bmi,this.interpretation,this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Result"),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "Your Result",
                  style: kresulttitle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReuseableCard(
                colour: kactiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: <Widget>[
                    Text(
                      result.toUpperCase(),
                      style: kresulttext,
                    ),
                    Text(
                      bmi,
                      style: kresultnumberstyle,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        interpretation,
                        style: kresultp,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                margin: EdgeInsets.only(top: 10.0),
                padding: EdgeInsets.only(bottom: 10.0, top: 10.0),
                alignment: Alignment.center,
                child: Text(
                  "RE-CALCULATE YOUR BMI",
                  style: kLargeButton,
                ),
                color: kbottomContainerColor,
                width: double.infinity,
                height: kbottomContainerHeight,
              ),
            ),
          ],
        ));
  }
}
