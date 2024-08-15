import 'package:flutter/material.dart';

class home2 extends StatefulWidget {
  static String id ='screen2';
  const home2({super.key});

  @override
  State<home2> createState() => _home2State();
}

class _home2State extends State<home2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff764abc),
        title: Center(child: Text('home screen2')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
              onPressed: (){

              },
              child:Center(child: Text('screen2'))
          ),
        ],
      ),
    );
  }
}
