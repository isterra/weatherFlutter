import 'package:flutter/material.dart';
import 'package:model_flutter/src/pages/homePage/components/app_bar.dart';
import 'package:model_flutter/src/pages/homePage/components/temperature.dart';
import 'package:model_flutter/src/shared/bloc/weather_bloc.dart';
import 'package:model_flutter/src/shared/components/gradient.dart';
import 'package:model_flutter/src/shared/models/weather/weather.dart';

class HomePageBody {
  static getBody(WeatherBloc weatherBloc, BuildContext context, Weather weather,
      Stream temperatures) {
    return Stack(
      children: [
        Container(
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: getGradient(weather.results.city),
          ),
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child:
                    MyAppBar.getAppBar(context, weatherBloc.getcitieNameStream),
              ),
              Temperature(
                weather: weather,
                temperatures: temperatures,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
