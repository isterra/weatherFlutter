import 'package:flutter/material.dart';

getGradient(String city) {
  switch (city) {
    case 'Rio de Janeiro, RJ':
      return LinearGradient(
          colors: [Colors.blue[500], Colors.orange[400]],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp);
      break;
    case 'São Paulo,SP':
      return LinearGradient(
          colors: [
            Color.fromARGB(255, 3, 11, 22),
            Color.fromARGB(255, 35, 61, 90),
            Color.fromARGB(255, 120, 145, 175)
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.0, 0.3, 1.0],
          tileMode: TileMode.clamp);
      break;
    case 'Canadá,ON':
      return LinearGradient(
          colors: [
            Color.fromARGB(255, 152, 202, 229),
            Color.fromARGB(255, 177, 203, 225),
            Color.fromARGB(255, 151, 170, 202)
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.0, 0.5, 1.0],
          tileMode: TileMode.clamp);
      break;
    case 'Belo Horizonte, MG':
      return LinearGradient(
          colors: [Colors.blue[600], Colors.orange[400]],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.2, 0.9],
          tileMode: TileMode.clamp);
      break;
    default:
  }
}
