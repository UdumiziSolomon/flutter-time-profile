import 'package:flutter/material.dart';
import 'package:learn/quote.dart';

class QuoteCard extends StatelessWidget {
  final QuoteData quote;
  final void Function() delete;

  const QuoteCard({super.key, required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: const TextStyle(
                  color: Color.fromARGB(255, 44, 43, 43),
                  fontSize: 18,
                  fontFamily: 'Jose'),
            ),
            const SizedBox(height: 6),
            Text(quote.author,
                style: const TextStyle(
                    fontSize: 15,
                    fontFamily: 'Jose',
                    color: Color.fromARGB(255, 121, 120, 120))),
            const SizedBox(height: 10),
            TextButton.icon(
                onPressed: delete,
                icon: const Icon(Icons.delete),
                label: const Text('Delete quote'))
          ],
        ),
      ),
    );
  }
}
