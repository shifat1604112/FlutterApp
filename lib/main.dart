import 'package:flutter/material.dart';
import 'bmiMain.dart';
import 'screen0.dart';
import 'weatherMain.dart';
import 'chatMain.dart';
import 'package:firebase_core/firebase_core.dart';

//void main() => runApp(MyApp());

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/' , routes: {
        '/' : (context) => Screen0(),
    });
  }
}