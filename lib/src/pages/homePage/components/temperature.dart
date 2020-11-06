import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
import 'package:model_flutter/src/pages/homePage/components/previsoes.dart';

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
              '27',
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
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            margin: EdgeInsets.only(top: 30),
            child: Row(
              children: [
                getPrevisoes(context, 'Ensolarado', 27),
                getPrevisoes(context, 'Tempestades', 23),
                getPrevisoes(context, 'Ensolarado', 33),
                getPrevisoes(context, 'Tempestades', 20),
                getPrevisoes(context, 'Ensolarado', 25),
                getPrevisoes(context, 'Tempestades', 19),
                getPrevisoes(context, 'Ensolarado', 37),
                getPrevisoes(context, 'Tempestades', 21),
              ],
            ),
          ),
        )
      ],
    );
  }
}
