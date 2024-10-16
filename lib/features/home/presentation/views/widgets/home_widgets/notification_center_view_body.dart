import 'package:fitness_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

import '../../../../data/notification_model.dart';
import 'custom_app_bar.dart';
import 'notification_container_item.dart';

class NotificationCenterViewBody extends StatelessWidget {
  NotificationCenterViewBody({super.key});


  final List<NotificationModel> notifications = [

    NotificationModel(
      img: AssetsData.lunch,
      title: 'Hey, it’s time for lunch',
      time: 'About 1 minutes ago',
    ),
    NotificationModel(
      img: AssetsData.lowerBody,
      title: 'Don’t miss your lower body workout',
      time: 'About 3 hours ago',
    ),
    NotificationModel(
      img: AssetsData.additionalMeal,
      title: 'Hey, let’s add some meals for your body',
      time: 'About 3 hours ago',
    ),
    NotificationModel(
      img: AssetsData.ab,
      title: 'Congratulations, You have finished AB workout',
      time: '29 May',
    ),
    NotificationModel(
      img: AssetsData.lunch,
      title: 'Hey, it’s time for lunch',
      time: '8 April',
    ),
    NotificationModel(
      img: AssetsData.lowerBody,
      title: 'Ups, You have missed your Lower body workout',
      time: '3 April',
    ),

  ];
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        const CustomAppBar(title: 'Notifications', backButton: true,),
        const SizedBox(height: 30,),
        Expanded(
          child: ListView.separated(
              itemCount: notifications.length,
              itemBuilder: (context, index) =>
                  NotificationContainerItem(model: notifications[index]),
              separatorBuilder: (context, index) =>const Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                child: Divider(),
              ),
          
          ),
        ),

      ],
    );
  }
}
