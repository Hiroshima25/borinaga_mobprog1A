import 'package:flutter/material.dart';
import 'package:quiatchon_mobprog/widgets/newsfeed_card.dart';

class NewsfeedScreen extends StatelessWidget {
  const NewsfeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NewsfeedCard(
          userName: "ICEMAN",
          postContent: "COLDDD.",
          date: "2 hours ago",
          numOfLikes: 250,
          profileImage: 'assets/images/iceman.jpg',
        ),

        NewsfeedCard(
          userName: "RED RANGERE",
          postContent: "RED AS FIRE",
          date: "Yesterday",
          numOfLikes: 500,
          hasImage: true,
          profileImage: 'assets/images/red ranger.jpg',
          postImage: 'assets/images/superboy.jpg',
        ),
      ],
    );
  }
}