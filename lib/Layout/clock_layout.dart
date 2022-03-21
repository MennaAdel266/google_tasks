import 'package:flutter/material.dart';
import 'package:google_tasks/Modules/clock_app/alarm_screen.dart';
import 'package:google_tasks/Modules/clock_app/clock_screen.dart';
import 'package:google_tasks/Modules/clock_app/stop_watch_screen.dart';
import 'package:google_tasks/Modules/clock_app/timer_screen.dart';

class HomeScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Clock App',
          ),
          centerTitle: true,
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                icon: Image.asset('assets/images/icons8-clock-64.png', height: 30,color: Colors.teal,),
                text: 'Clock',
              ),
              Tab(
                icon: Image.asset('assets/images/icons8-alarm-clock-50.png', height: 30,color: Colors.teal,),
                text: 'Alarm',
              ),
              Tab(
                icon: Image.asset('assets/images/icons8-sand-clock-30.png', height: 30,color: Colors.teal,),
                text: 'Timer',
              ),
              Tab(
                icon: Image.asset('assets/images/icons8-time-span-30.png', height: 30,color: Colors.teal,),
                text: 'Stop Watch',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ClockScreen(),
            AlarmScreen(),
            TimerScreen(),
            StopWatchScreen(),
          ],
        ),
      ),
    );
  }
}
