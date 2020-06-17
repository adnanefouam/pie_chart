import 'package:flutter/material.dart';

class Legend extends StatelessWidget {
  Legend({
    @required this.title,
    @required this.color,
    @required this.style,
  });

  final String title;
  final Color color;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          decoration: new BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
          margin: EdgeInsets.symmetric(vertical: 2.0),
          height: 12.0,
          width: 12.0,

        ),
        SizedBox(
          width: 8.0,
        ),
        Flexible(
          fit: FlexFit.loose,
          child: Text(
            title,
            style: style,
            softWrap: true,
          ),
        )
      ],
    );
  }
}
