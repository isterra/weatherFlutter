import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:model_flutter/src/shared/models/weather/forecast.dart';
import 'package:rxdart/rxdart.dart';

class WeatherDetailBloc extends BlocBase {
  BehaviorSubject<Forecast> forecast = BehaviorSubject<Forecast>();
  String city;
  Sink<Forecast> get setforecastValue => forecast.sink;
  Stream<Forecast> get getforecastStream => forecast.stream;

  void setForecast(Forecast e, String city) {
    setforecastValue.add(e);
    this.city = city;
  }

  void dispose() {
    super.dispose();
    forecast.close();
  }
}
