import 'package:fitness_app/features/home/presentation/views/widgets/home_widgets/notification_center_view_body.dart';
import 'package:flutter/material.dart';


class NotificationCenterView extends StatelessWidget {
  const NotificationCenterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: NotificationCenterViewBody(),
        ),
      ),
    );
  }
}
