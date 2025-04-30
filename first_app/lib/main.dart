import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello World', style: TextStyle(color: Colors.white)),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Row(
          children: [
            Expanded(child: Image.asset('assets/Kai.jpg')),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: Text("1"),
                color: Colors.red,
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: Text("2"),
                color: Colors.blue,
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: Text("3"),
                color: Colors.green,
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Text("Click", style: TextStyle(color: Colors.white)),
          onPressed: () {},
          backgroundColor: const Color.fromARGB(255, 251, 81, 69),
        ),
      ),
    );
  }
}
