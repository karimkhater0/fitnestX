import 'package:fitness_app/core/utils/functions/navigation_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../notification_center_view.dart';
import 'new_notifications_dot.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(

      children: [
        IconButton(
            onPressed: (){
              navigateTo(context, const NotificationCenterView());
            },
            icon: const Icon(IconlyLight.notification)
        ),

        ///todo: if there are new notifications
        const NewNotificationsDot(),
      ],
    );
  }
}
