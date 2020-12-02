import 'package:flutter/material.dart';

class MyAppBar {
  static AppBar getAppBar(BuildContext context, Stream weatherStream) {
    return AppBar(
      title: StreamBuilder(
        stream: weatherStream,
        builder: (context, snapshot) {
          if (snapshot.hasData) return Text(snapshot.data);
          return Text('Weather');
        },
      ),
      centerTitle: true,
      leading: IconButton(
          icon: Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pushNamed(context, '/search')),
      actions: [
        IconButton(
            icon: Icon(Icons.more_vert), onPressed: () => print('clicked 2'))
      ],
      elevation: 0,
      backgroundColor: Colors.transparent,
    );
  }
}
