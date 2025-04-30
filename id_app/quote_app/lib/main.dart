import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Quote> quotes = [
    Quote(text: "This is the quote", author: "Dendup Tshering"),
    Quote(text: "This is the quote", author: "Dendup Tshering"),
    Quote(text: "This is the quote", author: "Dendup Tshering"),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 248, 74, 61),
          title: Center(
            child: Text(
              "Quote",
              style: TextStyle(color: Colors.white, fontSize: 30.0),
            ),
          ),
        ),
        body: Column(
          children:
              quotes.map((quote) {
                return Text('${quote.text}-${quote.author}');
              }).toList(),
        ),
      ),
    );
  }
}
