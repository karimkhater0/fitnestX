import 'package:flutter/cupertino.dart';

class AddScheduleContainerModel {

  final String title;
  final IconData icon;
  final List<String>? values;
  final void Function()? onTap;

  AddScheduleContainerModel({required this.title, required this.icon, this.values,  this.onTap});
}