import 'package:calculate_bmiapp/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Color> theme = [
      Color(0xff5d6c66),
    ];
    return MaterialApp(
      title: "BMI Calculate",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: theme[0],
          textTheme: TextTheme(bodyText1: TextStyle(color: Colors.white)),
          appBarTheme:
              AppBarTheme(elevation: 0, centerTitle: true, color: theme[0])),
      home: HomePage(),
    );
  }
}
