import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../manager/cubit/home_cubit.dart';
import 'calendar_custom_container.dart';

class WorkoutCalendar extends StatelessWidget {
  const WorkoutCalendar({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          var cubit = HomeCubit.get(context);
          return SfCalendar(
            view: CalendarView.day,
            headerStyle: CalendarHeaderStyle(
                textAlign: TextAlign.center,
                backgroundColor: Colors.transparent,
                textStyle:
                Styles.textStyleMediumTextRegular.copyWith(color: kGrey)),
            todayTextStyle: Styles.textStyleSmallTextMedium.copyWith(
                color: Colors.white
            ),
            monthViewSettings: const MonthViewSettings(
              showAgenda: true,
            ),
            dataSource: EventDataSource(cubit.appointments),
            appointmentBuilder: (context, details) =>CalendarCustomContainer(
              details: details,
            ),
          );
        },
      ),
    );
  }
}





class EventDataSource extends CalendarDataSource {
  EventDataSource(List<Appointment> source) {
    appointments = source;
  }
}