import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mdi/mdi.dart';
import 'package:model_flutter/src/shared/bloc/weather_detail_bloc.dart';
import 'package:model_flutter/src/shared/components/variaveis.dart';
import 'package:model_flutter/src/shared/models/weather/forecast.dart';

getAnimation(
    String weather, String weekday, double size, int maxGrau, int minGrau) {
  for (int i = 0; i < weatherAvailabre.length; i++) {
    if (weatherAvailabre[i] == weather) {
      if (weatherAvailabre[i].toString().startsWith('Weather')) {
        return Hero(
            tag: '${assetWeather[i]}$weekday${maxGrau / minGrau}',
            child: Icon(
              assetWeather[i],
              size: size,
            ));
      } else {
        return Hero(
            tag: '${assetWeather[i]}$weekday${maxGrau / minGrau}',
            child: Lottie.asset('lib/src/shared/assets/${assetWeather[i]}.json',
                width: size, height: size));
      }
    }
  }
}

getPrevisoes(BuildContext context, Forecast forecast, String city) {
  final WeatherDetailBloc weatherDetail =
      BlocProvider.getBloc<WeatherDetailBloc>();
  double width = MediaQuery.of(context).size.width;
  return GestureDetector(
    onTap: () {
      weatherDetail.setForecast(forecast, city);
      Navigator.pushNamed(context, '/temperatureDetail');
    },
    child: Container(
      width: width / 3,
      child: Column(
        children: [
          Text(
            forecast.weekday,
            style: TextStyle(
                color: Colors.white.withOpacity(0.8), fontSize: width / 20),
          ),
          getAnimation(forecast.description, forecast.weekday, width / 5,
              forecast.max, forecast.min),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  forecast.max.toString(),
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: width / 20),
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
    ),
  );
}
