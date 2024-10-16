import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/utils/widgets/custom_container.dart';
import '../../../../../../core/utils/widgets/custom_switch.dart';

class TodayScheduleContainer extends StatelessWidget {
  const TodayScheduleContainer({super.key, required this.hour, required this.minute, required this.svg, required this.title, required this.time});

  final String hour, minute, svg, title, time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: CustomContainer(
        height: 126,
        radius: 20,
        padding: const EdgeInsets.all(15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(svg),

            const SizedBox(width: 15,),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        '$title,',
                        style: Styles.textStyleMediumTextMedium,
                      ),
                      Text(
                        time,
                        style: Styles.textStyleSmallTextRegular.copyWith(color: kGrey),
                      ),
              

                      const Spacer(),
                      IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: (){},
                        icon: const Icon(Icons.more_vert, color: kGrey,size: 16,),
                      ),
                    ],
                  ),
              
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'in ${hour}hours ${minute}minutes',
                        style: Styles.textStyleMediumTextMedium.copyWith(color: kGrey),
                      ),
                      const CustomSwitch(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

