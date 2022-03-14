import 'package:flutter/material.dart';
import 'package:google_tasks/ui-screens/Misbha.dart';
import 'package:google_tasks/ui-screens/profile_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: MisbhaScreen(),
    );
  }
}


