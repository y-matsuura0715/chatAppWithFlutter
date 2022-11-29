import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text('プロフィール'),
      ),
      body:
      const Center(child: Text('プロフィール画面', style: TextStyle(fontSize: 32.0))),
    );
  }
}