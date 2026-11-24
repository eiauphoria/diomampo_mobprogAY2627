import 'package:flutter/material.dart';
import 'package:diomampo_labact2a/widgets/newsfeed_card.dart';

class NewsfeedScreen extends StatelessWidget {
  const NewsfeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NewsfeedCard(
          userName: 'Cyrus Robles',
          postContent: 'Kamusta!',
          date: 'October 12 · 10:34 AM',
          numOfLikes: 100,
          hasImage: true,
          imagePath: 'assets/images/owl.jpg',
          showAuthorProfileImage: false,
        ),
        NewsfeedCard(
          userName: 'Roben Juanatas',
          postContent: 'Kicking off the holiday season with IONPACK!',
          date: 'December 1 · 4:10 PM',
          numOfLikes: 500,
          hasImage: true,
          imagePath: 'assets/images/iron-man.png',
          showAuthorProfileImage: false,
        ),
        NewsfeedCard(
          userName: 'Dea Ayel Diomampo',
          postContent: 'Small steps every day lead to big achievements.',
          date: 'November 24 · 7:05 PM',
          numOfLikes: 24,
        ),
      ],
    );
  }
}
