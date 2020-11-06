import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mdi/mdi.dart';

getAnimation(String weather) {
  switch (weather) {
    case 'Ensolarado':
      return 'sunny';
    case 'Tempestades':
      return 'storm';
      break;
    default:
  }
}

getPrevisoes(BuildContext context, String weather, int graus) {
  double width = MediaQuery.of(context).size.width;
  return Container(
    width: width / 3,
    child: Column(
      children: [
        Text(
          'Segunda',
          style: TextStyle(
              color: Colors.white.withOpacity(0.8), fontSize: width / 20),
        ),
        Lottie.asset('lib/src/shared/assets/${getAnimation(weather)}.json',
            width: width / 6, height: width / 6),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                graus.toString(),
                style: TextStyle(
                    color: Colors.white.withOpacity(0.8), fontSize: width / 20),
              ),
              Icon(
                Mdi.temperatureCelsius,
                size: width / 30,
                color: Colors.white.withOpacity(0.5),
              )
            ],
          ),
        )
      ],
    ),
  );
}
