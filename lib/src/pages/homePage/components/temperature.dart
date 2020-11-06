import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';

class Temperature extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: MediaQuery.of(context).size.width / 10,
            ),
            Text(
              '20',
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width / 4,
                  color: Colors.white.withOpacity(0.5)),
            ),
            Icon(
              Mdi.temperatureCelsius,
              color: Colors.white.withOpacity(0.5),
              size: (MediaQuery.of(context).size.width / 10) + 5,
            ),
          ],
        ),
        Text(
          "Ensolarado",
          style: TextStyle(
              color: Colors.white.withOpacity(0.5),
              fontSize: MediaQuery.of(context).size.width / 10),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}
