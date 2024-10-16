import 'package:fitness_app/features/home/data/notification_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../core/utils/styles.dart';

class NotificationContainerItem extends StatelessWidget {
  const NotificationContainerItem({super.key, required this.model, });

  final NotificationModel model;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 20,
          child: SvgPicture.asset(model.img),
        ),
        const SizedBox(width: 10,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                model.title,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: Styles.textStyleSmallTextMedium,
              ),
              Text(
                model.time,
                style: Styles.textStyleCaptionRegular,
              ),
            ],
          ),
        ),
        
        IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert))
      ],
    );
  }
}
