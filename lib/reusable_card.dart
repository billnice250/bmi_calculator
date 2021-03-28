import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget cardWild;

  ReusableCard({@required this.colour, this.cardWild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardWild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: colour,
      ),
    );
  }
}
