import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:model_flutter/src/shared/models/weather/weather.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../repository/api/requests.dart';

class WeatherBloc extends BlocBase {
  BehaviorSubject<String> citieName = BehaviorSubject<String>();
  BehaviorSubject<List<dynamic>> temperatures =
      new BehaviorSubject<List<dynamic>>();

  Sink<String> get setcitieNameValue => citieName.sink;
  Stream<String> get getcitieNameStream => citieName.stream;
  String get getcitieNameValue => citieName.value;
  Sink<List> get settemperaturesValue => temperatures.sink;
  Stream<List> get getTemperaturesStream => temperatures.stream;
  List get gettemperaturesValue => temperatures.value;

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
      updateWeatherCitie(name);
    });
  }

  void updateWeatherCitie(String city) {
    changeCitieName(city);
    if (citieName.value != 'Weather') {
      var response = requests.dioGetWeather(city);
      print(response);
      setweatherValue.add(Weather.fromJson(response));
      changeCitieName(response['results']['city']);
    }
  }

  @override
  void dispose() {
    super.dispose();
    citieName.close();
    weather.close();
    temperatures.close();
  }
}
