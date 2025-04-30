import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

int age = 0;

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 105, 105, 105),
        appBar: AppBar(
          title: Center(
            child: Text(
              "ID Card",
              style: TextStyle(fontSize: 30.0, color: Colors.white),
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 39, 39, 39),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              age = age + 1;
            });
          },
          child: Icon(Icons.add, color: Colors.black),
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30, 80, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/malena.jpg'),
                  radius: 80.0,
                ),
              ),
              Divider(height: 60.0),
              Text(
                "Name:",
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              SizedBox(height: 10.0),
              Text(
                "Dendup Tshering",
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              SizedBox(height: 30.0),
              Text(
                "Age:",
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              SizedBox(height: 10.0),
              Text(
                "$age",
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              SizedBox(height: 30.0),
              Row(
                children: [
                  Icon(Icons.email, color: Colors.white),
                  SizedBox(width: 10.0),
                  Text(
                    "dendup091@gmail.com",
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
