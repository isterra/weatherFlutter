import 'package:flutter/material.dart';
import 'package:model_flutter/src/pages/homePage/components/app_bar.dart';
import 'package:model_flutter/src/shared/bloc/weather_bloc.dart';

class HomePageBody {
  static getBody(WeatherBloc weatherBloc) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.deepPurple[700], Colors.purple[500]],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: MyAppBar.getAppBar(weatherBloc.getcitieNameStream),
              )
            ],
          ),
        ),
      ],
    );
  }
}
