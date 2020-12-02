import 'package:flutter/material.dart';

secondPageCaroussel(
    BuildContext context, int humidade, String vento, nSol, pSol, date) {
  return Padding(
    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 8),
    child: Column(
      children: [
        getTextFormated(date, context, option: 1),
        SizedBox(height: MediaQuery.of(context).size.height / 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                getTextFormated('Humidade', context),
                getTextFormated('Velocidade do vento', context),
                getTextFormated('Nascer do Sol', context),
                getTextFormated('Pôr do Sol', context),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                getTextFormated('$humidade%', context),
                getTextFormated('$vento', context),
                getTextFormated('$nSol', context),
                getTextFormated('$pSol', context),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}

getTextFormated(String text, BuildContext context, {int option}) {
  return Padding(
    padding: option == null
        ? EdgeInsets.only(top: MediaQuery.of(context).size.width / 20)
        : EdgeInsets.only(top: MediaQuery.of(context).size.width / 60),
    child: Text(text,
        style: TextStyle(
          color: Colors.white,
          fontSize: MediaQuery.of(context).size.width / 20,
        )),
  );
}
