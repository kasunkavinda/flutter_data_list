import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Quote> quotes = [
    Quote('this is the quote11', 'shakespier'),
    Quote('this is the quote22', 'shakespier'),
    Quote('this is the quote33', 'shakespier'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          title: const Text(
            'Quotes',
          ),
          centerTitle: true,
          backgroundColor: Colors.black38,
          elevation: 0,
        ),
        body: Column(
          children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),
        ));
  }
}
