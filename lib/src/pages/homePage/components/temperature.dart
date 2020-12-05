import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
import 'package:model_flutter/src/app_bloc.dart';
import 'package:model_flutter/src/pages/homePage/components/indicator.dart';
import 'package:model_flutter/src/pages/homePage/components/previsoes.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:model_flutter/src/pages/homePage/components/second_page.dart';
import 'package:model_flutter/src/shared/models/weather/weather.dart';

class Temperature extends StatelessWidget {
  final Weather weather;
  final Stream temperatures;
  final AppBloc appBloc = BlocProvider.getBloc<AppBloc>();
  final List pages = [0, 1];
  Temperature({Key key, this.weather, this.temperatures}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double heigth = MediaQuery.of(context).size.height;
    CarouselController buttonCarouselController = CarouselController();
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: heigth / 2,
            child: CarouselSlider(
              carouselController: buttonCarouselController,
              options: CarouselOptions(
                  initialPage: 0,
                  autoPlay: false,
                  disableCenter: true,
                  enlargeCenterPage: true,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    appBloc.changeCurrent(index);
                  }),
              items: [
                Padding(
                  padding: EdgeInsets.only(top: width / 3),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            width: width / 10,
                          ),
                          Text(
                            weather.results.temp.toString(),
                            style: TextStyle(
                                fontSize: heigth / 8,
                                color: Colors.white.withOpacity(0.5)),
                          ),
                          Icon(
                            Mdi.temperatureCelsius,
                            color: Colors.white.withOpacity(0.5),
                            size: (heigth / 20),
                          ),
                        ],
                      ),
                      Text(
                        weather.results.description,
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: heigth / 20),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                secondPageCaroussel(
                    context,
                    weather.results.humidity,
                    weather.results.windSpeedy,
                    weather.results.sunrise,
                    weather.results.sunset,
                    weather.results.date)
              ],
            ),
          ),
          getIndicator(appBloc.getcurrentStream),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              margin: EdgeInsets.only(top: heigth / 10),
              child: Row(
                children: weather.results.forecast.map<Widget>((e) {
                  return getPrevisoes(context, e, weather.results.city);
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
