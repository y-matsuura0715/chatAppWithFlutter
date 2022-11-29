import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text('commit済み'),
      ),
      body: Center(
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3
            ),
            itemCount: 20,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(size.width/3 * 2),
                    child: Image.asset("images/sample.jpeg", fit: BoxFit.cover),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
