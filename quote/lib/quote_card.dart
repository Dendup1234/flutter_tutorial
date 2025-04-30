import 'package:flutter/material.dart';

class QuoteCard extends StatelessWidget {
  const QuoteCard({super.key, required this.quote});
  final dynamic quote;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                quote.text,
                style: TextStyle(
                  color: const Color.fromARGB(255, 65, 65, 65),
                  fontSize: 30.0,
                ),
              ),
            ),
            Center(
              child: Text(
                quote.author,
                style: TextStyle(
                  color: const Color.fromARGB(255, 46, 46, 46),
                  fontSize: 15.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
