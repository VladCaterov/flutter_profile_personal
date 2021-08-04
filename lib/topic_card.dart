import 'package:flutter/material.dart';
import 'package:flutter_profile_personal/constants.dart';
import 'topic.dart';

class TopicCard extends StatelessWidget {
  // const TopicCard({Key? key}) : super(key: key);

  final Topic topic;
  TopicCard({required this.topic});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              topic.text,
              style: biggerFont
              ),
            SizedBox(
              height: 50.0,
            ),
          ],
        ),
      ),
    );
  }
}

