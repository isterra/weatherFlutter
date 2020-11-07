import 'package:flutter/material.dart';

getIndicator(Stream currentStream) {
  const List pages = [0, 1];
  return StreamBuilder<int>(
    stream: currentStream,
    builder: (context, snapshot) {
      if (snapshot.hasData) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: pages.map((e) {
            int index = e;
            return Container(
              width: MediaQuery.of(context).size.width / 50,
              height: MediaQuery.of(context).size.width / 50,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: snapshot.data == index
                    ? Color.fromARGB(255, 118, 118, 118)
                    : Color.fromARGB(255, 146, 146, 146),
              ),
            );
          }).toList(),
        );
      }
      return SizedBox.shrink();
    },
  );
}
