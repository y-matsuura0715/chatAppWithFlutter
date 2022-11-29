import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text('検索'),
      ),
      body:
      const Center(child: Text('検索画面', style: TextStyle(fontSize: 32.0))),
    );
  }
}