import 'package:flutter/material.dart';
import 'package:flutter_profile_personal/topic.dart';
import 'constants.dart';

import 'topic_card.dart';


class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  List<Topic> topics = [
    Topic(text: "About Me"),
    Topic(text: "Skills"),
    Topic(text: "Work Experience"),
    Topic(text: "Resume"),
  ];

  Widget _buildDashboard(){
    return Column(
      children: topics.map((topic) => TopicCard(
          topic: topic)).toList()
        );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vladimir Caterov: A Profile"),
        centerTitle: true,
      ),
      body: _buildDashboard(),
    );
  }
}