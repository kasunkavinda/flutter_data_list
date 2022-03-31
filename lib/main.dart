import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Quote> quotes = [
    Quote('this is the quote', 'shakespier'),
    Quote('this is the quote', 'shakespier'),
    Quote('this is the quote', 'shakespier'),
  ];

  Widget quoteCardTemplate(quote) {
    return Card(
        margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Text(quote.text,
                    style: TextStyle(fontSize: 18, color: Colors.grey[600])),
              ),
              SizedBox(height: 6.0),
              Center(
                child: Text(quote.author,
                    style: TextStyle(fontSize: 14, color: Colors.grey[800])),
              )
            ],
          ),
        ));
  }

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
          children: quotes.map((quote) => quoteCardTemplate(quote)).toList(),
        ));
  }
}
