import 'package:flutter/material.dart';
import 'package:diomampo_labact1a/widgets/newsfeed_card.dart';

class NewsfeedScreen extends StatelessWidget {
  const NewsfeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NewsfeedCard(
          userName: 'Dea Ayel Diomampo',
          postContent: '',
          date: '1 minute ago',
          numOfLikes: 10,
          hasImage: true,
          imagePath: 'assets/images/owl.jpg',
          profileImagePath: 'assets/images/profile.png',
        ),
        NewsfeedCard(
          userName: 'Dea Ayel Diomampo',
          postContent: 'I am Iron Man. #GeniusBillionairePlayboyPhilanthropist',
          date: 'November 20, 2026',
          numOfLikes: 3000,
          hasImage: true,
          imagePath: 'assets/images/iron-man.png',
        ),
      ],
    );
  }
}
