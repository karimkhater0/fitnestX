import 'package:flutter/material.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/utils/widgets/dashed_vertical_divider.dart';

class StepTrackerBody extends StatelessWidget {
  const StepTrackerBody({super.key, required this.body});

  final String body;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          constraints: const BoxConstraints(maxHeight: 80),
          child: const Padding(
            padding: EdgeInsets.only(left: 40, right: 25),
            child: DashedVerticalDivider(
              color: kPurpleDark,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5.0, bottom: 30),
          child: Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.sizeOf(context).width - 130,
            ),
            child: Text(
              body,
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
              style: Styles.textStyleSmallTextRegular.copyWith(color: kGrey),
            ),
          ),
        ),
      ],
    );
  }
}
