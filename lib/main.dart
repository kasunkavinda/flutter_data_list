import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Quote> quotes = [
    Quote(author: 'this is the quote', text: 'shakespier'),
    Quote(author: 'this is the quote', text: 'shakespier'),
    Quote(author: 'this is the quote', text: 'shakespier'),
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
          children: quotes
              .map((quote) => Text('${quote.text} - ${quote.author}'))
              .toList(),
        ));
  }
}
