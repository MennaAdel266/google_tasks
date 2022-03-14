import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MisbhaScreen extends StatefulWidget {
  @override
  State<MisbhaScreen> createState() => _MisbhaScreenState();
}

class _MisbhaScreenState extends State<MisbhaScreen> {
  int counter = 0;

  String name = "سبحان الله";

  int number = 0;

  @override
  Widget build(BuildContext context) {
    if(counter == 1){
      name = "الحمد لله";
    } else if (counter == 16){
      name = "الله اكبر";
    } else if (counter == 31){
      name = "لا اله الا الله";
    } else if (counter == 46) {
      number++;
      setState(() {
        counter=0;
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Misbha',
        ),
        centerTitle: true,
        backgroundColor: Colors.orange[300],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://img.pikbest.com/backgrounds/v3/20200516/islamic-background-design--usable-for-ed-ul-fitar--ramadan-or-any-other-islamic-design_1763777.jpg!bw700'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children:
          [
            SizedBox(
              height: 150,
            ),
            Text(
              name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    color: Colors.orange[200],
                    offset: Offset(2, 2),
                    blurRadius: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 215,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadiusDirectional.only(
                  bottomEnd: Radius.circular(70),
                  bottomStart: Radius.circular(30),
                  topEnd: Radius.circular(30),
                  topStart: Radius.circular(70),
                ),
              ),
              child: Text(
                'عدد التسبيحات ',
                style: TextStyle(
                  color: Colors.orange[300],
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '$counter',
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    color: Colors.orange[200],
                    offset: Offset(2, 2),
                    blurRadius: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange[300],
                shape: CircleBorder(
                  side: BorderSide(
                    color: Colors.white,
                    width: 3,
                  ),
                ),
                padding: EdgeInsets.all(40),
              ),
              onPressed: ()
              {
                setState(() {
                  counter++;
                });
              },
              child: Text(
                'اضغط',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:
              [
                TextButton(
                  onPressed:()
                  {
                    setState(() {
                      counter =0;
                      number = 0;
                    });
                  },
                  child: Text(
                    'البدء من جديد',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ) ,
                ),
                TextButton(
                  onPressed:(){},
                  child: Text(
                    'الدورة رقم : $number',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ) ,
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
