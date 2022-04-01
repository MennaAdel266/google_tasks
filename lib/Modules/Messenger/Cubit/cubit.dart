import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_tasks/Modules/Messenger/Cubit/states.dart';
import 'package:google_tasks/Modules/Messenger/chats_screen.dart';
import 'package:google_tasks/Modules/Messenger/pepole_screen.dart';
import 'package:google_tasks/Modules/Messenger/stories_screen.dart';

class AppCubit extends Cubit <AppStates>{
  AppCubit() : super(AppInitialStates());
  static AppCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<Widget> screens=[
    ChatsScreen(),
    PeopleScreen(),
    StoriesScreen(),
  ];
  List<String> titles =[
    'Chats',
    'People',
    'Sstories',
  ];
  void changeIndex(int index){
    currentIndex= index;
    emit(AppChangeBottomNavStates());
  }
}
