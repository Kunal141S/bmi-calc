import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
   ReusableCard({this.cardChild, required this.colorr, this.onPress });

  final Color colorr;
  final Widget? cardChild;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: colorr,
        ),
        margin: EdgeInsets.all(10),
        child: cardChild,
      ),
    );
  }
}
