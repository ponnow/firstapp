import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(40),
            color: Colors.grey,
            child: Image.asset('assets/images/sona.jpeg'),
          ),
        ));
  }
}
