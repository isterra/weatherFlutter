import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:dio/dio.dart';
import 'package:model_flutter/src/shared/models/weather/weather.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../repository/api/requests.dart';

class WeatherBloc extends BlocBase {
  BehaviorSubject<String> citieName = BehaviorSubject<String>();
  Sink<String> get setcitieNameValue => citieName.sink;
  Stream<String> get getcitieNameStream => citieName.stream;
  String get getcitieNameValue => citieName.value;
  Requests requests = Requests();

  BehaviorSubject<Weather> weather = BehaviorSubject<Weather>();

  Sink<Weather> get setweatherValue => weather.sink;
  Stream<Weather> get getweatherStream => weather.stream;
  Weather get getweatherValue => weather.value;

  void changeCitieName(String newCitie) {
    setcitieNameValue.add(newCitie);
    SharedPreferences.getInstance()
        .then((value) => value.setString('citieName', newCitie));
  }

  void setWeatherBlocValue() {
    SharedPreferences.getInstance().then((value) {
      String name = value.getString('citieName') ?? 'Weather';
      changeCitieName(name);
      updateWeatherCitie();
    });
  }

  void updateWeatherCitie() async {
    // Response response = await requests.dioGetWeather(citieName.value);
    // if (response.statusCode >= 200 && response.statusCode < 300) {
    //   setweatherValue.add(Weather.fromJson(response.data));
    // } else {
    //   setweatherValue.add(null);
    // }
    setweatherValue
        .add(Weather.fromJson(requests.dioGetWeather(citieName.value)));
  }

  @override
  void dispose() {
    super.dispose();
    citieName.close();
    weather.close();
  }
}
