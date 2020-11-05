import 'package:flutter/material.dart';
import 'package:model_flutter/src/pages/homePage/home_page.dart';
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
        ],
        child: MaterialApp(
          theme: Provider.of<CustomThemeMode>(context).ligthTheme(),
          darkTheme: Provider.of<CustomThemeMode>(context).darkTheme(),
          themeMode: Provider.of<CustomThemeMode>(context).currentTheme(),
          debugShowCheckedModeBanner: false,

          initialRoute: '/home',

          title: 'Template flutter ',

          // ---------- defining routes ---------------
          routes: {
            '/home': (context) => HomePage(),
          },
          //--------------------------------------------
        ));
  }
}
