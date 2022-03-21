import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlarmScreen extends StatefulWidget {


  @override
  State<AlarmScreen> createState() => _AlarmScreenState();
}

class _AlarmScreenState extends State<AlarmScreen> {

  String time;
  String date;

  List listDate = [];
  List listTime = [];

  void addToList() {
    listDate.add(date);
    listTime.add(time);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {
          showTime().then((value) {
            setState(() {
              time = value;
            });
            showDate().then((value) {
              setState(() {
                print(value);
                date = value;
              });
              addToList();
            });
          });
        },
        child: Icon(Icons.add,),
      ),
      body: ConditionalBuilder(
        condition: listTime != null,
        builder: (context) => ListView.builder(
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return buildItem(listTime[index], listDate[index]);
          },
          itemCount: listTime.length,
        ),
        fallback: (context)=>Center(child: CircularProgressIndicator()),
      ),


    );
  }

  Widget buildItem(String time, date) =>
      Card(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 8,),
              child: Row(
                children: [
                  Icon(Icons.label, color: Colors.teal,),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Alarm',
                  ),
                  SizedBox(
                    width: 160,
                  ),
                  Text(
                    date,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8,),
              child: Row(
                children: [
                  Text(
                    time,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  Switch(
                    value: true,
                    onChanged: (value) {},
                    activeColor: Colors.teal,
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  Future showTime() async
  {
    var time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    var localizations = MaterialLocalizations.of(context);
    localizations.formatTimeOfDay(time).toString();

    print(time);

    return localizations.formatTimeOfDay(time).toString();
  }

  Future showDate() async
  {
    var date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2030),
    );
    print(date);
    return date.toString().substring(0, 10);
  }
}