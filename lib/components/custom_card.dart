import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  CustomCard(
      {@required this.status, @required this.figure, @required this.color});
  final String status;
  final int figure;
  final Color color;

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(30.0),
        ),
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(widget.status),
            SizedBox(height: 40),
            Align(
                alignment: Alignment.bottomRight,
                child: Text(widget.figure.toString())),
          ],
        ));
  }
}
