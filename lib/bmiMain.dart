import 'package:flutter/material.dart';
import 'package:multi_app/screens/input_page_bmi.dart';

class BmiMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
    );
  }
}

/*
material app er onk gula theme property ase shekhan theke amra dark theme choose krte chaile ThemeData.dark() select
korte hbe, but amra jodi chai j dark theme er shb same thakbe just dui ekta property change korbo then copyWith use krte hbe
theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
)
ekhane amra dark theme er bg color o emni primary color attribite change krsi just

==>colorZilla

floatingActionButton : floatingActionButton(
  child : Icon(Icons.add)
)

suppose amra ei floatingaActionButton widget tar property change krte chaitesi
taile etar theme change krte chaile etake theme widgte wrap krte hbe then shetar data manipulate krte parbo :

floatingActionButton : Theme(
    data : Themedata.light(),
    child : floatingActionButton(
    child : Icon(Icons.add)
   )
)


 */