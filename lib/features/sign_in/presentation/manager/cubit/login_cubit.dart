import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';

import '../../../data/user_data_model.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  static LoginCubit get(context) => BlocProvider.of(context);

  IconData suffix = IconlyLight.show;
  bool isPassword = true;
  void changePasswordVisibility()
  {
    isPassword = !isPassword;

    suffix = isPassword? IconlyLight.show:IconlyLight.hide;
    emit(ChangePasswordVisibilityState());

  }

  bool isMale = true;
  void changeGender(bool value)
  {
    isMale = value;
    emit(ChangeGenderState());
  }

  bool isChecked = false;
  void onChanged(bool? value) {
    isChecked = !isChecked;
    emit(ChangeCheckBoxState());
  }

  void signUp(UserDataModel model)async
  {
    emit(SignUpLoadingState());
    await Future.delayed(const Duration(seconds: 2));
    emit(SignUpSuccessState(model));
  }
}
