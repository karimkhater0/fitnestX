import 'package:flutter/material.dart';

import '../../../../../../core/utils/widgets/custom_container.dart';
import '../../../../data/notification_model.dart';
import 'notification_container_item.dart';

class LatestActivityContainer extends StatelessWidget {
  const LatestActivityContainer({super.key, required this.model});

  final NotificationModel model;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: CustomContainer(
        height: 80,
        radius: 16,
        child: NotificationContainerItem(model: model,),


      ),
    );
  }
}
