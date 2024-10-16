
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingInitial());

  static OnboardingCubit get(context) => BlocProvider.of(context);

  bool isLast = false;
  double progress = 0.25;
  void changeOnBoardingPage(int index,) {

    progress = (index + 1) / 4;
    if (index == 3) {
      isLast = true;
      emit(ChangeOnBoardingState());

    }
    else {
      isLast = false;
      emit(ChangeOnBoardingState());
    }
  }
}
