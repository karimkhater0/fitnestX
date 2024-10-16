import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/utils/widgets/custom_container.dart';

class CalendarCustomContainer extends StatelessWidget {
  const CalendarCustomContainer({super.key, required this.details});

  final CalendarAppointmentDetails details;
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      height: 60,
      radius: 50,
      gradient: kPurpleGradient,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Center(
          child: Text(
            '${details.appointments.first.subject}, ${details.appointments.first.startTime.hour}:${details.appointments.first.startTime.minute}',
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: Styles.textStyleSmallTextRegular.copyWith(
              color: Colors.white,
            ),
          )
      ),

    );
  }
}
