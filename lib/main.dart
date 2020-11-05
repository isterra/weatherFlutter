import 'package:flutter/material.dart';
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

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Provider.of<CustomThemeMode>(context).ligthTheme(),
      darkTheme: Provider.of<CustomThemeMode>(context).darkTheme(),
      themeMode: Provider.of<CustomThemeMode>(context).currentTheme(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Template Flutter'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('New app'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Provider.of<CustomThemeMode>(context).switchTheme(),
      ),
    );
  }
}
