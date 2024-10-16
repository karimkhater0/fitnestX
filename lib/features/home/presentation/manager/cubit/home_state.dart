part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class ChangeBottomNavBarState extends HomeState {}

final class ChangeSwitchState extends HomeState {}

final class AddScheduleSuccessState extends HomeState {}

final class ChooseWorkoutSuccessState extends HomeState {}


final class GetUserDataLoadingState extends HomeState {}
final class GetUserDataSuccessState extends HomeState {}
final class GetUserDataErrorState extends HomeState {
  final String error;
  GetUserDataErrorState({required this.error});
}


final class ChangeDateLoadingState extends HomeState {}
final class ChangeDateSuccessState extends HomeState {}
final class ChangeDateErrorState extends HomeState {
  final String error;
  ChangeDateErrorState({required this.error});
}
