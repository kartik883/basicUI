import 'package:flutter/material.dart';
import 'package:navigatr/home.dart';
import 'package:navigatr/homescreen2.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     theme: ThemeData(
       primaryColor: Colors.white,

     ),
     initialRoute: home.id,
     routes: {
       home.id:(context) => home(),
       home2.id:(context)=>home2(),
     },
     // home: home(),
   );

  }
}


