import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../manager/cubit/home_cubit.dart';
import 'edit_profile_button.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = HomeCubit.get(context);
    return Row(

      children: [
        CircleAvatar(
          radius: 28,
          //backgroundColor: kBlueLight,
          child: SvgPicture.asset(AssetsData.profilePhoto),
        ),
        const SizedBox(width: 15,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${cubit.model.firstName} ${cubit.model.lastName}',
              style: Styles.textStyleMediumTextMedium,
            ),
            Text(
              '${cubit.model.plan} Program',
              style: Styles.textStyleSmallTextRegular.copyWith(color: kGreyDark),
            ),
          ],
        ),
        const Spacer(),
        const EditProfileButton(),
      ],
    );
  }
}
