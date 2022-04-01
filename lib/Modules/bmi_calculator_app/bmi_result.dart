import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class BmiResult extends StatelessWidget
{
  final int result;
  final bool isMale;
  final int age;
  final double height;
  final int weight;

  BmiResult({
    @required this.age,
    @required this.isMale,
    @required this.height,
    @required this.weight,
    @required this.result,

  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'BMI Result',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Text(
            'Your Result is :',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.blue,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: Container(
              width: double.infinity,
               height: 200,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(25),
                 color: Colors.grey[900],
               ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Gender : ${isMale ? 'Male' : 'Female'}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Age : $age',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Height : ${height.round()}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Weight : $weight',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Result : $result',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Status : ${showStatus(result)}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  String showStatus(int result){
    if(result < 18){
      return 'UnderWeight';
    }
    else if (result >= 18 && result <= 29){
      return 'NormalWeight';
    }
    else if (result > 30){
      return 'OverWeight';
    }
  }
}