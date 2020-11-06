import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:model_flutter/src/pages/homePage/components/homePage_body.dart';
import 'package:model_flutter/src/shared/bloc/weather_bloc.dart';

class HomePage extends StatelessWidget {
  final WeatherBloc weatherBloc = BlocProvider.getBloc<WeatherBloc>();
  @override
  Widget build(BuildContext context) {
    weatherBloc.setWeatherBlocValue();
    return Scaffold(
      body: HomePageBody.getBody(weatherBloc),
    );
  }
}
