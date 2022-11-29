import 'package:flutter/material.dart';

class Notice extends StatelessWidget {
  const Notice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text('通知'),
      ),
      body:
      const Center(child: Text('通知画面', style: TextStyle(fontSize: 32.0))),
    );
  }
}