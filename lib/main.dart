import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: QuoteList()
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<String> quotes = [
    "Bananas are always watching.",
    "This is the end of your banana",
    "There will be apple sauce at the end of the rainbow",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),

      body: Column(
        children: quotes.map((quote) => Text(quote)).toList(),
      )
    );
  }
}