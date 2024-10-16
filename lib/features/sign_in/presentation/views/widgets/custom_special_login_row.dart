import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import 'custom_login_container.dart';

class CustomSpecialLoginRow extends StatelessWidget {
  const CustomSpecialLoginRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomLoginContainer(pic: AssetsData.google),
          SizedBox(width: 30,),
          CustomLoginContainer(pic: AssetsData.facebook),
        ],
      ),
    );
  }
}
