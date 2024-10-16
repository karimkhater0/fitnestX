part of 'login_cubit.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}

final class ChangePasswordVisibilityState extends LoginState {}

final class ChangeCheckBoxState extends LoginState {}

final class ChangeGenderState extends LoginState {}

final class SignUpSuccessState extends LoginState {
  final UserDataModel model;

  SignUpSuccessState(this.model);
}
final class SignUpErrorState extends LoginState {}
final class SignUpLoadingState extends LoginState {}
