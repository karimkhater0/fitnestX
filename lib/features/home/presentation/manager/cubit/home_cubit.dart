import 'dart:convert';

import 'package:fitness_app/constants.dart';
import 'package:fitness_app/core/utils/cache_helper.dart';
import 'package:fitness_app/core/utils/functions/date_picker.dart';
import 'package:fitness_app/features/sign_in/data/user_data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../../views/widgets/home_widgets/activity_view_body.dart';
import '../../views/widgets/home_widgets/home_view_body.dart';
import '../../views/widgets/home_widgets/profile_view_body.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  static HomeCubit get(context) => BlocProvider.of(context);

  late UserDataModel model;
  void getUserModel() async {
    emit(GetUserDataLoadingState());
    String userJson = await CacheHelper.getData(key: 'user');

    if (userJson != '') {
      Map<String, dynamic> userMap = await jsonDecode(userJson);
      model = UserDataModel.fromJson(userMap);
      emit(GetUserDataSuccessState());
    } else {
      emit(GetUserDataErrorState(error: 'No Data Found'));
    }
  }

  List<Widget> screens = [
    HomeViewBody(),
    const ActivityViewBody(),
    const ProfileViewBody(),
  ];

  int currentIndex = 0;
  void changeBottomNavBar(int index) {
    currentIndex = index;
    emit(ChangeBottomNavBarState());
  }

  Future<DateTime?>? date;
  String formattedDate = DateFormat('EEE, dd MMM yyyy').format(DateTime.now());
  String amPm = DateFormat('a').format(DateTime.now());
  String minute = DateFormat('mm').format(DateTime.now());
  String hour = DateFormat('hh').format(DateTime.now());


  void selectDate(context) {
    emit(ChangeDateLoadingState());
    date = datePicker(
      context: context,
      lastDate: DateTime(DateTime.now().year + 1),
    ).then((value) {
      formattedDate = DateFormat('EEE, dd MMM yyyy').format(value!);
      emit(ChangeDateSuccessState());
    }).catchError((error) {
      emit(ChangeDateErrorState(error: error.toString()));
    });
  }


  List<Appointment> appointments = <Appointment>[];
  void addAppointment() {
    String dateTimeString = '$formattedDate $hour:$minute $amPm';
    DateTime dateTime = DateFormat('EEE, dd MMM yyyy hh:mm a').parse(dateTimeString);
    appointments.add(
        Appointment(
          startTime: dateTime,
          endTime: dateTime.add(const Duration(hours: 1)),
          color: kGreyLight,
          subject: selectedWorkout,

        )
    );
    emit(AddScheduleSuccessState());
    debugPrint(appointments.toString());
  }


  List<String> days = [];
  List<String> dates = [];
  void getDaysInWeek() {
    for (int i = 0; i < 7; i++) {
      var day = DateTime.now().add(Duration(days: i));
      days.add(DateFormat('EEE').format(day));
      dates.add(DateFormat('d').format(day));
    }
  }

  bool isOn = true;
  void changeSwitch(bool value) {
    isOn = value;
    emit(ChangeSwitchState());
  }


  String selectedWorkout = 'Upperbody Workout';
  void chooseWorkout(value){
    selectedWorkout = value;
    emit(ChooseWorkoutSuccessState());
  }

}
