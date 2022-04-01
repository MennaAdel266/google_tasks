import 'package:flutter/material.dart';

class PeopleScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Row(
          children:[
            CircleAvatar(
              backgroundColor: Colors.grey[800],
              radius: 25,
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVj8rtqb78E_8kdlslt75o8UiUA5winbln9Q&usqp=CAU'
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              'People',
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey[800],
              child: Icon(
                Icons.contact_page_rounded,
                size: 18,
                color: Colors.white,
              ),
            ),
            onPressed: (){},
          ),
        ],
      ),
    );
  }
}
