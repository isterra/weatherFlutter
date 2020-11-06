import 'package:dio/dio.dart';
import 'package:model_flutter/src/shared/repository/api/dioRepository.dart';
import 'package:model_flutter/src/shared/repository/variables.dart';

class Requests {
  DioRepository dioRepository = DioRepository();
  Map<String, dynamic> dioGetWeather(String city) {
    // return dioRepository.dio
    //     .get('${Variaveis.BASEURL}?key=${Variaveis.Key}&city_name=$city');
    return {
      "by": "city_name",
      "valid_key": true,
      "results": {
        "temp": 23,
        "date": "06/11/2020",
        "time": "09:38",
        "condition_code": "32",
        "description": "Ensolarado",
        "currently": "dia",
        "cid": "",
        "city": "Belo Horizonte, MG",
        "img_id": "32",
        "humidity": 65,
        "wind_speedy": "7 km/h",
        "sunrise": "5:12 am",
        "sunset": "6:08 pm",
        "condition_slug": "clear_day",
        "city_name": "Belo Horizonte",
        "forecast": [
          {
            "date": "06/11",
            "weekday": "Sex",
            "max": 27,
            "min": 16,
            "description": "Ensolarado com muitas nuvens",
            "condition": "cloudly_day"
          },
          {
            "date": "07/11",
            "weekday": "Sáb",
            "max": 28,
            "min": 17,
            "description": "Ensolarado com muitas nuvens",
            "condition": "cloudly_day"
          },
          {
            "date": "08/11",
            "weekday": "Dom",
            "max": 29,
            "min": 18,
            "description": "Ensolarado com muitas nuvens",
            "condition": "cloudly_day"
          },
          {
            "date": "09/11",
            "weekday": "Seg",
            "max": 29,
            "min": 19,
            "description": "Tempestades",
            "condition": "storm"
          },
          {
            "date": "10/11",
            "weekday": "Ter",
            "max": 28,
            "min": 19,
            "description": "Tempestades",
            "condition": "storm"
          },
          {
            "date": "11/11",
            "weekday": "Qua",
            "max": 28,
            "min": 19,
            "description": "Tempestades",
            "condition": "storm"
          },
          {
            "date": "12/11",
            "weekday": "Qui",
            "max": 24,
            "min": 19,
            "description": "Tempestades",
            "condition": "storm"
          },
          {
            "date": "13/11",
            "weekday": "Sex",
            "max": 25,
            "min": 19,
            "description": "Tempestades",
            "condition": "storm"
          },
          {
            "date": "14/11",
            "weekday": "Sáb",
            "max": 25,
            "min": 19,
            "description": "Tempestades",
            "condition": "storm"
          },
          {
            "date": "15/11",
            "weekday": "Dom",
            "max": 25,
            "min": 18,
            "description": "Tempestades isoladas",
            "condition": "storm"
          }
        ]
      },
      "execution_time": 0.0,
      "from_cache": true
    };
  }
}
