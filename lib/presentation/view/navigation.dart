import 'package:chat_app/presentation/view/profile.dart';
import 'package:chat_app/presentation/view/search.dart';
import 'package:chat_app/presentation/view/chat.dart';
import 'package:chat_app/presentation/view/home.dart';
import 'package:chat_app/presentation/view/notification.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
          navigationBarTheme:  const NavigationBarThemeData(
            backgroundColor: Colors.purpleAccent
          )
      ),
      home: const MyStatefullWidget(),
    );
  }
}

class MyStatefullWidget extends StatefulWidget {
  const MyStatefullWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefullWidget> createState() => _MyStatefullWidgetState();
}

class _MyStatefullWidgetState extends State<MyStatefullWidget> {

  int _selectIndex = 0;

  void _onItemTapped(int index){
    setState(() {
      _selectIndex = index;
    });
  }
  static const _views = [
    Home(),
    Search(),
    Chat(),
    Notice(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _views[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home, size:35),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search, size:35),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.chat, size:35),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.notifications,size:35),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person, size:35),label: ""),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}

