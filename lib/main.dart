
import 'package:flutter/material.dart';
import 'package:flutter_profile_personal/dashboard.dart';
// import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vladimir Caterov: A Profile',
      theme: ThemeData(
        primaryColor: Colors.black,
        fontFamily: "Arial",
      ),
      home: Dashboard(),
    );
  }
}






//
// class RandomWords extends StatefulWidget {
//   const RandomWords({Key? key}) : super(key: key);
//
//   @override
//   _RandomWordsState createState() => _RandomWordsState();
// }
//
// class _RandomWordsState extends State<RandomWords> {
//   final _suggestions = <WordPair>[];
//   final _biggerFont = const TextStyle(fontSize: 18.0);
//   final _saved = <WordPair>{};
//
//   Widget _buildRow(WordPair pair){
//     final alreadySaved = _saved.contains(pair);
//     return ListTile(
//       title: Text(
//         pair.asPascalCase,
//         style: _biggerFont,
//       ),
//       trailing: Icon(
//         alreadySaved ? Icons.favorite: Icons.favorite_border,
//         color: alreadySaved ? Colors.red : null,
//       ),
//       onTap: (){
//         setState(() {
//           if (alreadySaved){
//             _saved.remove(pair);
//           }
//           else {
//             _saved.add(pair);
//           }
//         });
//       },
//     );
//   }
//   Widget _buildSuggestions() {
//     return ListView.builder(
//       padding: const EdgeInsets.all(16.0),
//       itemBuilder:  /*1*/ (context, i) {
//         if (i.isOdd) return const Divider(); /*2*/
//         final index = i ~/ 2; /*3*/
//         if (index >= _suggestions.length) {
//           _suggestions.addAll(generateWordPairs().take(10)); /*4*/
//         }
//         return _buildRow(_suggestions[index]);
//       });
//   }
//   /*
//   /*1*/ The itemBuilder is called once per suggested word pairing,
//   and places each suggestion into a ListTile row. For even rows,
//   the function adds a ListTile row for the word pairing. For odd
//   rows, the function adds a Divider widget to visually separate the
//   entries. Note that the divider might be difficult to see on smaller
//   devices
//    */
//
//   /*
//   /*2*/ Add a one-pixel high divider widget before each row in the ListView
//   /*3*/ The expression i~/2 divides i by 2 and returns an integer result
//   For example: 1,2,3,4,5 becomes 0,1,1,2,2. This calculates the number
//   of actual word pairings in the ListView, minus the divider widgets
//   /*4*/ If you've reached the end of the available word pairings, then
//   generate 10 more and add them to the suggestions list
//   */
//
//   void _pushSaved() {
//     Navigator.of(context).push(
//       MaterialPageRoute<void>(
//         builder: (BuildContext context) {
//           final tiles = _saved.map(
//                 (WordPair pair) {
//               return ListTile(
//                 title: Text(
//                     pair.asPascalCase,
//                     style: _biggerFont
//                 ),
//               );
//             },
//           );
//           final divided = tiles.isNotEmpty
//               ? ListTile.divideTiles(context: context, tiles: tiles).toList()
//               : <Widget>[];
//           return Scaffold(
//             appBar: AppBar(
//               title: Text("Saved Suggestions"),
//             ),
//             body: ListView(children: divided),
//           );
//         },
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Vladimir Caterov: A Profile'),
//         actions: [
//           IconButton(onPressed: _pushSaved, icon: Icon(Icons.list)),
//         ],
//       ),
//       body: _buildSuggestions(),
//     );
//   }
// }

