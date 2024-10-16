import 'package:flutter/material.dart';

class NewNotificationsDot extends StatelessWidget {
  const NewNotificationsDot({super.key});

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      right: 15,
      top: 14,
      child: CircleAvatar(
        radius: 4,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          radius: 2.5,
          backgroundColor: Colors.red,
          //child: Text('2'),
        ),
      ),
    );
  }
}
