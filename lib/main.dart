import 'package:flutter/material.dart';
import 'package:mediform/screens/home_screen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mediform',
      theme: ThemeData(
        primaryColor: Colors.purple[900],
        accentColor: Color(0xFFC3B4DF)
      ),
      home: HomeScreen(),
    );
  }
}
