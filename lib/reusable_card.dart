import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget cardWild;
  final Function tapResponse;

  ReusableCard({@required this.colour, this.cardWild, this.tapResponse});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tapResponse,
      child: Container(
        child: cardWild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
      ),
    );
  }
}
