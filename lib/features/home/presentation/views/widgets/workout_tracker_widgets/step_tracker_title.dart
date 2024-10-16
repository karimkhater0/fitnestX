import 'package:flutter/material.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/utils/widgets/gradient_widget.dart';

class StepTrackerTitle extends StatelessWidget {
  const StepTrackerTitle({super.key, required this.title, required this.index});

  final String title, index;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GradientWidget(
          gradient: kPurpleGradient,
          width: 50,
          child: Row(
            children: [
              SizedBox(
                width: 20,
                child: Text(
                  '0$index',
                  style: Styles.textStyleMediumTextMedium
                      .copyWith(color: Colors.white),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.transparent,
                  border: Border.all(color: Colors.white),
                ),
                child: const Center(
                    child: CircleAvatar(
                      radius: 5,
                      backgroundColor: Colors.white,
                    )),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Text(
          title,
          style: Styles.textStyleMediumTextMedium,
        ),
      ],
    );
  }
}
