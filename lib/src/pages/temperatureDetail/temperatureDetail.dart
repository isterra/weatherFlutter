import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mdi/mdi.dart';
import 'package:model_flutter/src/pages/homePage/components/previsoes.dart';
import 'package:model_flutter/src/shared/bloc/weather_detail_bloc.dart';
import 'package:model_flutter/src/shared/models/weather/forecast.dart';

class TemperatureDetail extends StatelessWidget {
  final WeatherDetailBloc weatherDetailBloc =
      BlocProvider.getBloc<WeatherDetailBloc>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blue[500], Colors.orange[400]],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
          child: StreamBuilder<Forecast>(
            stream: weatherDetailBloc.getforecastStream,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final size = MediaQuery.of(context).size.height;
                return Container(
                  margin: EdgeInsets.only(top: size / 5),
                  child: Column(
                    children: [
                      Text(
                        snapshot.data.date,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.width / 10),
                      ),
                      Text(
                        snapshot.data.weekday,
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.9),
                            fontSize: MediaQuery.of(context).size.width / 12),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.width / 2,
                        child: getAnimation(
                            snapshot.data.description,
                            snapshot.data.weekday,
                            MediaQuery.of(context).size.width / 3,
                            snapshot.data.max,
                            snapshot.data.min),
                      ),
                      Text(
                        snapshot.data.description,
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.9),
                            fontSize: MediaQuery.of(context).size.width / 12),
                        textAlign: TextAlign.center,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 20,
                          ),
                          Lottie.asset(
                            'lib/src/shared/assets/thermometer.json',
                            height: MediaQuery.of(context).size.width / 2,
                          ),
                          Column(
                            children: [
                              getTemperatures(
                                  context, snapshot.data.max, 'Max: '),
                              SizedBox(
                                height: MediaQuery.of(context).size.width / 4.5,
                              ),
                              getTemperatures(
                                  context, snapshot.data.min, 'Min:'),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                );
              }
              return SizedBox.shrink();
            },
          )),
    );
  }
}

getTemperatures(BuildContext context, int t, String tipo) {
  final width = MediaQuery.of(context).size.width;
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text(
        '$tipo ${t.toString()}',
        style: styleText(context),
      ),
      Icon(
        Mdi.temperatureCelsius,
        color: Colors.white.withOpacity(0.8),
        size: (width / 30),
      ),
    ],
  );
}

TextStyle styleText(BuildContext context) {
  return TextStyle(
      color: Colors.white, fontSize: MediaQuery.of(context).size.width / 20);
}
