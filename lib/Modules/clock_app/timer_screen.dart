
import 'package:custom_timer/custom_timer.dart';
import 'package:flutter/material.dart';

class TimerScreen extends StatefulWidget {

  @override
  State<TimerScreen> createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {


  final CustomTimerController _controller = CustomTimerController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTimer(
              controller: _controller,
              begin: Duration(minutes: 10),
              end: Duration(),
              builder: (time) {
                return Text(
                    "${time.hours}:${time.minutes}:${time.seconds}.${time.milliseconds}",
                    style: TextStyle(
                        fontSize: 24.0,
                      fontWeight: FontWeight.bold
                    )
                );
              }
          ),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RaisedButton(
                onPressed: () {
                  _controller.start();

                },
                child: Text('Start'),
                color: Colors.blueGrey,
              ),
              RaisedButton(
                onPressed: () {
                  _controller.pause();

                },
                child: const Text('Pause'),
                color: Colors.teal,
              ),
              RaisedButton(
                onPressed: () {
                  _controller.reset();

                },
                child: Text('Reset'),
                color: Colors.brown,
              ),

            ],
          )
        ],
      ),

    );
  }
}