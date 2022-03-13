import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile'
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20,),
        child: Column(
          children: [
            CircleAvatar(
                radius: 80,
                backgroundImage: NetworkImage(
                  'https://img.freepik.com/free-photo/portrait-confident-happy-woman-with-short-hair-cross-arms-chest-like-professional-smiling-standing-against-white-wall_176420-34241.jpg?w=740',
                ) ,
              ),
            SizedBox(height: 30,),
            Text(
              'Menna Adel',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ListTile(
              title: Text(
                'Name : Menna Adel',
                style: TextStyle(
                  color: Colors.amber,
                ),
              ),
              subtitle: Text(
                'user name',
              ),
              leading: Icon(
                Icons.person,
                color: Colors.blue,
                size: 40,
              ),
              trailing: Icon(
                  Icons.arrow_forward_ios_outlined,
                color: Colors.grey,
              ),
            ),
            ListTile(
              title: Text(
                'Phone : 0122222222',
                style: TextStyle(
                  color: Colors.amber,
                ),
              ),
              subtitle: Text(
                'user phone',
              ),
              leading: Icon(
                Icons.phone,
                color: Colors.blue,
                size: 40,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.grey,
              ),
            ),
            ListTile(
              title: Text(
                'Age : 21',
                style: TextStyle(
                  color: Colors.amber,
                ),
              ),
              subtitle: Text(
                'user age',
              ),
              leading: Icon(
                Icons.person,
                color: Colors.blue,
                size: 40,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.grey,
              ),
            ),
            ListTile(
              title: Text(
                'Address : Zagazig / Egypt',
                style: TextStyle(
                  color: Colors.amber,
                ),
              ),
              subtitle: Text(
                'user address',
              ),
              leading: Icon(
                Icons.home,
                color: Colors.blue,
                size: 40,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.grey,
              ),
            ),


          ],
        ),
      ),
    );
  }
}
