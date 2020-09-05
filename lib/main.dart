import 'package:App6_Audio_Player/video.dart';
import 'package:flutter/material.dart';
import 'design.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "design",
    routes: {
      "design": (context) => Design(),
      "video": (context) => VideoPlayerScreen(),
    },
  ));
}
