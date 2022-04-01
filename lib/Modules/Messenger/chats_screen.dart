import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_tasks/Modules/Messenger/Cubit/cubit.dart';
import 'package:google_tasks/Modules/Messenger/pepole_screen.dart';
import 'package:google_tasks/Modules/Messenger/stories_screen.dart';
import 'package:google_tasks/shared/components/components.dart';

class ChatsScreen extends StatefulWidget{
  
  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {

    int currentIndex = 0;

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
              'Chats',
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey[800],
              child: Icon(
                Icons.camera_alt,
                size: 18,
                color: Colors.white,

              ),
            ),
            onPressed: (){},
          ),
          IconButton(
            icon: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey[800],
              child: Icon(
                Icons.edit,
                size: 18,
                color: Colors.white,

              ),
            ),
            onPressed: (){},
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon:Icon(Icons.chat_bubble),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
              icon:Icon(Icons.people_rounded),
              label: 'People',
            ),
            BottomNavigationBarItem(
              icon:Icon(Icons.amp_stories_rounded),
              label: 'Stories',
            ),
          ],
        onTap: (int index)
        {
          currentIndex = index;
          setState(() {});
          switch (index)
          {
            case 1 :
              navigateTo(context, PeopleScreen());
              break;
            case 2 :
              navigateTo(context, StoriesScreen());
              break;
          }
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey[800],
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                padding: EdgeInsets.all(5),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Search',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buildStoryItem(),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 20,
                  ),
                  itemCount: 5,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder:(context, index) => buildChatItem(),
                separatorBuilder: (context, index) => SizedBox(
                  height: 20,
                ),
                itemCount: 7,
              ),
            ],
          ),
        ),
      ),
    );

  }

  //arrow function
  Widget buildChatItem() => Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
                'https://as2.ftcdn.net/v2/jpg/01/87/14/51/1000_F_187145146_SB34n4kdiNqlVSvaTy4YUJcUWjNO540N.jpg'
            ),
          ),
          CircleAvatar(
            radius: 8,
            backgroundColor: Colors.black,
          ),
          CircleAvatar(
            radius: 7.5,
            backgroundColor: Colors.green,
          ),
        ],
      ),
      SizedBox(
        width: 20,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sohila Ibrahim',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  'Hello,How are you!!',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    width: 7,
                    height: 7,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Text(
                  '10:20',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );

  Widget buildStoryItem() =>  Container(
    width:60 ,
    child: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVj8rtqb78E_8kdlslt75o8UiUA5winbln9Q&usqp=CAU'
              ),
            ),
            CircleAvatar(
              radius: 8,
              backgroundColor: Colors.black,
            ),
            CircleAvatar(
              radius: 7.5,
              backgroundColor: Colors.green,
            ),
          ],
        ),
        SizedBox(
          width: 6,
        ),
        Text(
          'Menna Adel',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.white,
          ),
        ),

      ],
    ),
  );
}