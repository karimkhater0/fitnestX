import 'package:flutter/material.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/styles.dart';


class TitleRow extends StatelessWidget {
  const TitleRow({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 30.0, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Styles.textStyleLargeTextSemiBold,
          ),

          TextButton(
            onPressed: (){},
            child: Text(
              'see more',
              style: Styles.textStyleSmallTextSemiBold.copyWith(color: kGrey),
            ),
          ),
        ],
      ),
    );
  }
}
