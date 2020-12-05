import 'package:model_flutter/src/shared/models/weather/forecast.dart';

class Results {
  int temp;
  String date;
  String time;
  String conditionCode;
  String description;
  String currently;
  String cid;
  String city;
  String imgId;
  int humidity;
  String windSpeedy;
  String sunrise;
  String sunset;
  String conditionSlug;
  String cityName;
  List<Forecast> forecast;
  double latitude;
  double longitude;

  Results(
      {this.temp,
      this.date,
      this.time,
      this.conditionCode,
      this.description,
      this.currently,
      this.cid,
      this.city,
      this.imgId,
      this.humidity,
      this.windSpeedy,
      this.sunrise,
      this.sunset,
      this.conditionSlug,
      this.cityName,
      this.forecast,
      this.latitude,
      this.longitude});

  Results.fromJson(Map<String, dynamic> json) {
    temp = json['temp'];
    date = json['date'];
    time = json['time'];
    conditionCode = json['condition_code'];
    description = json['description'];
    currently = json['currently'];
    cid = json['cid'];
    city = json['city'];
    imgId = json['img_id'];
    humidity = json['humidity'];
    windSpeedy = json['wind_speedy'];
    sunrise = json['sunrise'];
    sunset = json['sunset'];
    conditionSlug = json['condition_slug'];
    cityName = json['city_name'];
    if (json['forecast'] != null) {
      forecast = new List<Forecast>();
      for (int i = 0; i <= 5; i++) {
        forecast.add(Forecast.fromJson(json['forecast'][i]));
      }
    }
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['temp'] = this.temp;
    data['date'] = this.date;
    data['time'] = this.time;
    data['condition_code'] = this.conditionCode;
    data['description'] = this.description;
    data['currently'] = this.currently;
    data['cid'] = this.cid;
    data['city'] = this.city;
    data['img_id'] = this.imgId;
    data['humidity'] = this.humidity;
    data['wind_speedy'] = this.windSpeedy;
    data['sunrise'] = this.sunrise;
    data['sunset'] = this.sunset;
    data['condition_slug'] = this.conditionSlug;
    data['city_name'] = this.cityName;
    if (this.forecast != null) {
      data['forecast'] = this.forecast.map((v) => v.toJson()).toList();
    }
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    return data;
  }
}
