import 'dart:async';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:model_flutter/src/shared/bloc/weather_bloc.dart';
import 'package:model_flutter/src/shared/components/variaveis.dart';

class SearchPage extends StatelessWidget {
  final WeatherBloc weatherBloc = BlocProvider.getBloc<WeatherBloc>();
  final TextEditingController textControllerBloc = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Selecione a cidade:',
              style:
                  TextStyle(fontSize: MediaQuery.of(context).size.height / 25),
            ),
            Lottie.asset('lib/src/shared/assets/gps.json',
                height: MediaQuery.of(context).size.height / 5),
            Container(
                margin: EdgeInsets.fromLTRB(width / 10, 0, width / 10, 0),
                child: Column(
                    children: cities
                        .map<Widget>((e) => buttonCity(e, context))
                        .toList()))
          ],
        ),
      ),
    );
  }

  buttonCity(String city, BuildContext context) {
    return RaisedButton(
      color: Colors.blue[200],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Center(
        child: Text(
          city,
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.height / 40,
          ),
        ),
      ),
      onPressed: () => onSubmitedValue(city, context),
    );
  }

  onSubmitedValue(String city, BuildContext context) {
    Timer(Duration(microseconds: 700), () {
      Navigator.pushNamed(context, '/home');
    });
    weatherBloc.updateWeatherCitie(city);
  }
}
