import 'package:flutter/material.dart';
import 'package:model_flutter/src/my_app.dart';
import 'package:model_flutter/src/shared/components/themMode/theme_mode.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => CustomThemeMode(),
      child: MyApp(),
    ),
  );
}
