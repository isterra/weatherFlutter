import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:model_flutter/src/pages/homePage/components/homePage_body.dart';
import 'package:model_flutter/src/shared/bloc/weather_bloc.dart';
import 'package:model_flutter/src/shared/models/weather/weather.dart';

class HomePage extends StatelessWidget {
  final WeatherBloc weatherBloc = BlocProvider.getBloc<WeatherBloc>();
  @override
  Widget build(BuildContext context) {
    weatherBloc.setWeatherBlocValue();
    return Scaffold(
      body: StreamBuilder<Weather>(
        stream: weatherBloc.getweatherStream,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return HomePageBody.getBody(weatherBloc, context, snapshot.data);
          }
          return SizedBox.shrink();
        },
      ),
    );
  }
}
