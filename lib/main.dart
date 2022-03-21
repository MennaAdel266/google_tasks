import 'package:flutter/material.dart';
import 'package:google_tasks/Layout/clock_layout.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}


