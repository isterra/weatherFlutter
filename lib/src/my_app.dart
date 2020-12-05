import 'package:flutter/material.dart';
import 'package:model_flutter/src/pages/homePage/home_page.dart';
import 'package:model_flutter/src/pages/searchPage/searchPage.dart';
import 'package:model_flutter/src/pages/temperatureDetail/temperatureDetail.dart';
import 'package:model_flutter/src/shared/bloc/weather_bloc.dart';
import 'package:model_flutter/src/shared/bloc/weather_detail_bloc.dart';
import 'package:model_flutter/src/shared/components/themMode/theme_mode.dart';
import 'package:provider/provider.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'app_bloc.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        blocs: [
          Bloc((_) => AppBloc()),
          Bloc((_) => WeatherBloc()),
          Bloc((_) => WeatherDetailBloc()),
        ],
        child: MaterialApp(
          theme: Provider.of<CustomThemeMode>(context).ligthTheme(),
          darkTheme: Provider.of<CustomThemeMode>(context).darkTheme(),
          themeMode: Provider.of<CustomThemeMode>(context).currentTheme(),
          debugShowCheckedModeBanner: false,

          initialRoute: '/home',

          title: 'Weather',

          // ---------- defining routes ---------------
          routes: {
            '/home': (context) => HomePage(),
            '/temperatureDetail': (context) => TemperatureDetail(),
            '/search': (context) => SearchPage(),
          },
          //--------------------------------------------
        ));
  }
}
