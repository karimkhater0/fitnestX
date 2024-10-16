import 'package:flutter/cupertino.dart';

class ProfileItemModel
{
  final String title;
  final IconData icon;
  final Widget? widget;

  ProfileItemModel({required this.title, required this.icon, this.widget});
}