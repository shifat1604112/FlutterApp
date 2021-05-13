import 'package:flutter/material.dart';
import 'package:multi_app/w_screens/loading_screen.dart';

void main() => runApp(WeatherMain());

class WeatherMain extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: LoadingScreen(),
    );
  }
}
