import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text('ホーム'),
      ),
      body:
      const Center(child: Text('ホーム画面', style: TextStyle(fontSize: 32.0))),
    );
  }
}