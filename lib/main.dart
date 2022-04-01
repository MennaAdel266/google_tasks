import 'package:flutter/material.dart';
import 'package:google_tasks/Layout/clock_layout.dart';
import 'package:google_tasks/Modules/Messenger/chats_screen.dart';
import 'package:google_tasks/Modules/bmi_calculator_app/bmi_calculator.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.black,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.black,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.blue,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
          elevation: 20,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          titleSpacing: 30,
        ),
      ),
      home: ChatsScreen(),
    );
  }
}


