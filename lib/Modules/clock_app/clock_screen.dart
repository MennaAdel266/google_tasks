import 'package:flutter/material.dart';

class ClockScreen extends StatefulWidget {


  @override
  State<ClockScreen> createState() => _ClockScreenState();
}

class _ClockScreenState extends State<ClockScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              DateTime.now().hour > 12 ? 'Good Evening' : 'Good Morning',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              DateTime.now().hour > 12 ? '${DateTime.now().hour -12} : ${DateTime.now().minute} PM' : '${DateTime.now().hour} : ${DateTime.now().minute} AM ',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),


          ],
        ),
      ),
    );
  }
}
