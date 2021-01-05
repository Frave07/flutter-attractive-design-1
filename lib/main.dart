import 'package:diseno1/Pages/Detalle.dart';
import 'package:diseno1/Pages/Home.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Diseno 1',
      initialRoute: 'home',
      routes: {
          'home': ( _ ) => HomePage(), 
          'detalle': ( _ ) => DetallePage(), 
      },
    );
  }
}