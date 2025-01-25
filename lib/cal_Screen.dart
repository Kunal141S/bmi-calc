import 'package:bmicalc/cal_brain.dart';
import 'package:bmicalc/input_page.dart';
import 'package:bmicalc/reusable_card.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'cal_brain.dart';

class CalScreen extends StatelessWidget {
  CalScreen({required this.bmiResult, required this.healthText});

  final String bmiResult;
  final String healthText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: inactiveCardColor,
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text(
                'RESULT',
                style: calBodyText,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colorr: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    bmiResult,
                    style: bodyNameStyle,
                  ),
                  Text(
                    healthText,
                    style: bodyNameStyle,
                  ),
                ],
              ),
            ),
          ),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('GO BACK'),
            ),
          ),)
        ],
      ),
    );
  }
}
