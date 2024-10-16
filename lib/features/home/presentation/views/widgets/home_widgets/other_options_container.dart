import 'package:fitness_app/features/home/presentation/views/widgets/home_widgets/profile_row_item.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/utils/widgets/custom_container.dart';
import '../../../../data/profile_item_model.dart';
import '../../settings_view.dart';
import 'contact_us.dart';
import 'privacy_policy.dart';


class OtherOptionsContainer extends StatelessWidget {
  OtherOptionsContainer({super.key});

  final List<ProfileItemModel> otherOptions = [
    ProfileItemModel(
        title: 'Contact Us',
        icon: IconlyLight.message,
        widget: const ContactUs(),
    ),
    ProfileItemModel(
        title: 'Privacy Policy',
        icon: IconlyLight.shield_done,
        widget: const PrivacyPolicy()
    ),
    ProfileItemModel(title: 'Settings', icon: IconlyLight.setting,
        widget: const SettingsView()
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: CustomContainer(
        height: 210,
        radius: 16,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Other',
              style: Styles.textStyleLargeTextSemiBold,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: otherOptions.length,
              itemBuilder: (context, index)
              => ProfileRowItem(
                title: otherOptions[index].title,
                icon: otherOptions[index].icon,
                widget: otherOptions[index].widget,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
