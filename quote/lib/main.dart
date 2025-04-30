import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

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
    Quote(text: "This is the text", author: "Dendup Tshering"),
    Quote(text: "This is the text", author: "Dendup Tshering"),
    Quote(text: "This is the text", author: "Dendup Tshering"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Quote",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 243, 74, 62),
        ),
        body: Column(
          children:
              quotes.map((quote) {
                return QuoteCard(quote: quote);
              }).toList(),
        ),
      ),
    );
  }
}
