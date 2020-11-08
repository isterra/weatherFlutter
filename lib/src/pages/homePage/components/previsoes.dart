import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mdi/mdi.dart';
import 'package:weather_icons/weather_icons.dart';

getAnimation(String weather, double size) {
  for (int i = 0; i < weatherAvailabre.length; i++) {
    if (weatherAvailabre[i] == weather) {
      if (weatherAvailabre[i].toString().startsWith('Weather')) {
        return Icon(
          assetWeather[i],
          size: size,
        );
      } else {
        return Lottie.asset('lib/src/shared/assets/${assetWeather[i]}.json',
            width: size, height: size);
      }
    }
  }
}

List<String> weatherAvailabre = [
  'Tempestade forte',
  'Tempestade tropical',
  'Furacão',
  'Tempestades severas',
  'Tempestades',
  'Misto de neve e chuva',
  'Misto chuva e gelo',
  'Misto neve e gelo',
  'Geada fina',
  'Chuviscos',
  'Congelamento chuva',
  'Alguns chuviscos',
  'Neve baixa',
  'Tempestade com neve',
  'Ventania com neve',
  'Neve',
  'Granizo',
  'Gelo',
  'Poeira',
  'Neblina',
  'Tempestade de areia',
  'Fumacento',
  'Vento acentuado',
  'Ventania',
  'Tempo frio',
  'Tempo nublado',
  'Tempo limpo',
  'Parcialmente nublado',
  'Ensolarado',
  'Estrelado',
  'Ensolarado com muitas nuvens',
  'Misto chuva e granizo',
  'Ar quente',
  'Tempestades isoladas',
  'Trovoadas dispersas',
  'Chuvas esparsas',
  'Pesados neve',
  'Chuviscos com neve',
  'Neve pesada',
  'Sol com poucas nuvens',
  'Chuva',
  'Queda de neve',
  'Tempestades isoladas',
  'Serviço não disponível'
];
List assetWeather = [
  'storm',
  'NS',
  WeatherIcons.tornado,
  'storm',
  'storm',
  'snow',
  'snow',
  'snow',
  'partly-shower',
  'partly-shower',
  'snow-sunny',
  'partly-shower',
  'snow-sunny',
  'snow-sunny',
  'snow-sunny',
  'snow-sunny',
  'snow-sunny',
  'snow-sunny',
  'mist',
  'windy',
  WeatherIcons.sandstorm,
  WeatherIcons.smog,
  WeatherIcons.strong_wind,
  WeatherIcons.wind,
  WeatherIcons.thermometer_exterior,
  'wind',
  'sunny',
  'partly-cloudy',
  'sunny',
  WeatherIcons.stars,
  'partly-cloudy',
  'snow',
  WeatherIcons.thermometer,
  'partly-cloudy',
  'thunder',
  'partly-shower',
  'snow-sunny',
  'snow-sunny',
  'snow-sunny',
  'partly-cloudy',
  'storm',
  'snow',
  'stormshowersday',
  WeatherIcons.na
];
getPrevisoes(BuildContext context, String weather, weekDay, int graus) {
  double width = MediaQuery.of(context).size.width;
  return Container(
    width: width / 3,
    child: Column(
      children: [
        Text(
          weekDay,
          style: TextStyle(
              color: Colors.white.withOpacity(0.8), fontSize: width / 20),
        ),
        getAnimation(weather, width / 6),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                graus.toString(),
                style: TextStyle(
                    color: Colors.white.withOpacity(0.8), fontSize: width / 20),
              ),
              Icon(
                Mdi.temperatureCelsius,
                size: width / 30,
                color: Colors.white.withOpacity(0.5),
              )
            ],
          ),
        )
      ],
    ),
  );
}
