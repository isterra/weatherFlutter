import 'package:flutter/material.dart';
import 'package:model_flutter/src/pages/homePage/components/app_bar.dart';
import 'package:model_flutter/src/pages/homePage/components/temperature.dart';
import 'package:model_flutter/src/shared/bloc/weather_bloc.dart';

class HomePageBody {
  static getBody(WeatherBloc weatherBloc, BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.blue[500], Colors.orange[300]],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: MyAppBar.getAppBar(weatherBloc.getcitieNameStream),
            ),
            Container(
                margin:
                    EdgeInsets.only(top: MediaQuery.of(context).size.width / 4),
                child: Temperature()),
          ],
        ),
      ),
    );
  }
}
