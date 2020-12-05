import 'package:model_flutter/src/shared/repository/api/dioRepository.dart';

class Requests {
  DioRepository dioRepository = DioRepository();
  Map<String, dynamic> dioGetWeather(String city) {
    switch (city) {
      case 'Belo Horizonte, MG':
        return {
          "by": "city_name",
          "valid_key": true,
          "results": {
            "temp": 23,
            "date": "06/11/2020",
            "time": "09:38",
            "condition_code": "32",
            "description": "Ensolarado com poucas nuvens",
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
                "description": "Tempestades",
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
                "description": "Sol com poucas nuvens",
                "condition": "storm"
              },
            ]
          },
          "execution_time": 0.0,
          "from_cache": true
        };
        break;
      case 'Rio de Janeiro, RJ':
        return {
          "by": "city_name",
          "valid_key": true,
          "results": {
            "temp": 23,
            "date": "06/11/2027",
            "time": "09:38",
            "condition_code": "32",
            "description": "Ensolarado",
            "currently": "dia",
            "cid": "",
            "city": "Rio de Janeiro, RJ",
            "img_id": "32",
            "humidity": 84,
            "wind_speedy": "7 km/h",
            "sunrise": "5:18 am",
            "sunset": "6:54 pm",
            "condition_slug": "clear_day",
            "city_name": "Rio de Janeiro,RJ",
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
                "description": "Tempo nublado",
                "condition": "cloudly_day"
              },
              {
                "date": "09/11",
                "weekday": "Seg",
                "max": 29,
                "min": 19,
                "description": "Tempo nublado",
                "condition": "storm"
              },
              {
                "date": "10/11",
                "weekday": "Ter",
                "max": 28,
                "min": 19,
                "description": "Tempo limpo",
                "condition": "storm"
              },
              {
                "date": "11/11",
                "weekday": "Qua",
                "max": 28,
                "min": 19,
                "description": "Tempo limpo",
                "condition": "storm"
              },
            ]
          },
          "execution_time": 0.0,
          "from_cache": true
        };
        break;
      case 'São Paulo,SP':
        return {
          "by": "city_name",
          "valid_key": true,
          "results": {
            "temp": 23,
            "date": "06/11/2027",
            "time": "09:38",
            "condition_code": "32",
            "description": "Chuvoso",
            "currently": "dia",
            "cid": "",
            "city": "São Paulo,SP",
            "img_id": "32",
            "humidity": 72,
            "wind_speedy": "13 km/h",
            "sunrise": "5:18 am",
            "sunset": "6:54 pm",
            "condition_slug": "clear_day",
            "city_name": "São Paulo,SP",
            "forecast": [
              {
                "date": "06/11",
                "weekday": "Sex",
                "max": 27,
                "min": 16,
                "description": "Tempestade forte",
                "condition": "cloudly_day"
              },
              {
                "date": "07/11",
                "weekday": "Sáb",
                "max": 28,
                "min": 17,
                "description": "Tempestade forte",
                "condition": "cloudly_day"
              },
              {
                "date": "08/11",
                "weekday": "Dom",
                "max": 29,
                "min": 18,
                "description": "Tempestade forte",
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
                "description": "Tempestades isoladas",
                "condition": "storm"
              },
              {
                "date": "11/11",
                "weekday": "Qua",
                "max": 28,
                "min": 19,
                "description": "Parcialmente nublado",
                "condition": "storm"
              },
            ]
          },
          "execution_time": 0.0,
          "from_cache": true
        };
        break;
      case 'Canadá,ON':
        return {
          "by": "city_name",
          "valid_key": true,
          "results": {
            "temp": 23,
            "date": "06/11/2027",
            "time": "09:38",
            "condition_code": "32",
            "description": "Neve",
            "currently": "dia",
            "cid": "",
            "city": "Canadá,ON",
            "img_id": "32",
            "humidity": 77,
            "wind_speedy": "23 km/h",
            "sunrise": "5:18 am",
            "sunset": "6:54 pm",
            "condition_slug": "clear_day",
            "city_name": "Canadá,ON",
            "forecast": [
              {
                "date": "06/11",
                "weekday": "Sex",
                "max": 27,
                "min": 16,
                "description": "Queda de neve",
                "condition": "cloudly_day"
              },
              {
                "date": "07/11",
                "weekday": "Sáb",
                "max": 28,
                "min": 17,
                "description": "Chuviscos com neve",
                "condition": "cloudly_day"
              },
              {
                "date": "08/11",
                "weekday": "Dom",
                "max": 29,
                "min": 18,
                "description": "Chuviscos com neve",
                "condition": "cloudly_day"
              },
              {
                "date": "09/11",
                "weekday": "Seg",
                "max": 29,
                "min": 19,
                "description": "Parcialmente nublado",
                "condition": "storm"
              },
              {
                "date": "10/11",
                "weekday": "Ter",
                "max": 28,
                "min": 19,
                "description": "Parcialmente nublado",
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
            ]
          },
          "execution_time": 0.0,
          "from_cache": true
        };
        break;
      default:
        return null;
        break;
    }
  }
}
