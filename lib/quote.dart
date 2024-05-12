class QuoteData {
  String text;
  String author;

  QuoteData({ required this.text, required this.author });
}


// import 'package:flutter/material.dart';
// import 'package:learn/quote.dart';

// class QuoteList extends StatefulWidget {
//   const QuoteList({super.key});

//   @override
//   State<QuoteList> createState() => _QuoteListState();
// }

// class _QuoteListState extends State<QuoteList> {
//   List<QuoteData> qoutes = [
//     QuoteData(author: 'Solomon', text: 'This is a quote from solomon'),
//     QuoteData(author: 'Ejiro', text: 'This is a quote from ejiro'),
//     QuoteData(author: 'Tompolo', text: 'This is a quote from tompolo'),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 238, 238, 238),
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text(
//           'Awesome Quotes',
//           style: TextStyle(fontFamily: 'Jose', fontSize: 22),
//         ),
//         backgroundColor: const Color.fromARGB(255, 24, 78, 48),
//         foregroundColor: Colors.white,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: qoutes.map((q) {
//             return Text('${q.author} - ${q.text}');
//           }).toList(),
//         ),
//       ),
//     );
//   }
// }