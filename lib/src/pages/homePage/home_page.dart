import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:model_flutter/src/app_bloc.dart';
import 'package:model_flutter/src/shared/components/themMode/theme_mode.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  final AppBloc appBloc = BlocProvider.getBloc<AppBloc>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Template Flutter'),
        centerTitle: true,
        actions: [
          FlatButton(
            child: Icon(
              Icons.lightbulb_outline,
              color: Colors.white,
            ),
            onPressed: () =>
                Provider.of<CustomThemeMode>(context).switchTheme(),
          )
        ],
      ),
      body: StreamBuilder(
        stream: appBloc.getCounterStream,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.connectionState == ConnectionState.none) {
            return Center(
              child: Text("Nenhum dado"),
            );
          } else if (snapshot.connectionState == ConnectionState.active) {
            if (snapshot.hasError) {
              return Center(
                child: Text('ERRO!!'),
              );
            } else if (snapshot.hasData) {
              return Center(
                child: Text(snapshot.data.toString()),
              );
            }
          }
          //DEFAULT RETURN
          return SizedBox.shrink();
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.plus_one),
        onPressed: () => appBloc.increment(),
      ),
    );
  }
}
