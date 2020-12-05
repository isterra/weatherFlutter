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
            Icons.search,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pushNamed(context, '/search')),
      elevation: 0,
      backgroundColor: Colors.transparent,
    );
  }
}
