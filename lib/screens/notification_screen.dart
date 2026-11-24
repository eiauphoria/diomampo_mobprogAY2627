import 'package:flutter/material.dart';
import 'package:diomampo_labact1a/widgets/notification_widget.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: const [
        NotificationWidget(
          name: 'Cyrus Robles',
          post: 'Campus post',
          description: 'Uploaded a new photo',
        ),
        NotificationWidget(
          name: 'Roben Juanatas',
          post: 'Holiday post',
          description: 'Liked your recent post',
        ),
        NotificationWidget(
          name: 'Dea Ayel Diomampo',
          post: 'Daily post',
          description: 'Shared a new update',
        ),
        NotificationWidget(
          name: 'Tony Stark',
          post: 'Team update',
          description: 'Mentioned you in a comment',
        ),
        NotificationWidget(
          name: 'Steve Rogers',
          post: 'Community post',
          description: 'Invited you to an event',
        ),
        NotificationWidget(
          name: 'Sample Name',
          post: 'Sample Post',
          description: 'Sample description',
        ),
      ],
    );
  }
}
