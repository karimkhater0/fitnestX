import 'package:flutter/material.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../manager/cubit/home_cubit.dart';
import 'notification_icon.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = HomeCubit.get(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome Back,',
              style: Styles.textStyleSmallTextRegular.copyWith(color: kGrey),
            ),
            Text(
              '${cubit.model.firstName} ${cubit.model.lastName}',
              style: Styles.textStyleH4Bold,
            ),
          ],
        ),

        const NotificationIcon(),
      ],
    );
  }
}
