import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:model_flutter/src/shared/models/weather/forecast.dart';
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
      changeCitieName(name);
      updateWeatherCitie();
      createDataGrraph();
    });
  }

  void createDataGrraph() {
    List max = new List();
    List min = new List();
    List<Forecast> forecast = weather.value.results.forecast;
    for (int i = 0; i <= 6; i++) {
      var valuemax = [forecast[i].weekday, forecast[i].max];
      var valuemin = [forecast[i].weekday, forecast[i].min];
      max.add(valuemax);
      min.add(valuemin);
    }
    List temperature = [min, max];
    settemperaturesValue.add(temperature);
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
    temperatures.close();
  }
}
