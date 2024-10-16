import 'package:flutter/material.dart';

///Primary Colors
const Color kBlueDark = Color(0xFF92A3FD);
const Color kBlueLight = Color(0xFF9DCEFF);

///Secondary Colors
const Color kPurpleDark = Color(0xFFC58BF2);
const Color kPurpleLight = Color(0xFFEEA4CE);

const Color kBlack = Color(0xFF2b2d30);

Color kBgColor(context){
  Color color = Theme.of(context).brightness == Brightness.dark
      ? kBlack
      : Colors.white;
  return color;
}

const Color kBabyBlue = Color(0xffeaf0fe);
const Color kPinkLight = Color(0xFFf7eaf9);

const Color kGreyDark = Color(0xFF7B6F72);
const Color kGrey = Color(0xFFADA4A5);
const Color kGreyLight = Color(0xFFDDDADA);

const Color kBorderColor = Color(0xFFF7F8F8);

///Box Shadows
const BoxShadow kBlueBoxShadow = BoxShadow(
  color: Color(0x4C95ADFE),
  offset: Offset(0, 10),
  blurRadius: 22,
  spreadRadius: 0,
);
const BoxShadow kPurpleBoxShadow = BoxShadow(
  color: Color(0x4CC58BF2),
  offset: Offset(0, 10),
  blurRadius: 22,
  spreadRadius: 0,
);
const BoxShadow kWhiteBoxShadow = BoxShadow(
  color: Color(0x111D1617),
  offset: Offset(0, 10),
  blurRadius: 22,
  spreadRadius: 0,
);

///Gradients
const LinearGradient kBlueGradient = LinearGradient(
  colors: [kBlueLight, kBlueDark,],
  begin: Alignment(-1.00, 0.08),
  end: Alignment(1, -0.08),
);
const LinearGradient kPurpleGradient = LinearGradient(
  colors: [kPurpleLight, kPurpleDark,],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);
const LinearGradient kGreyGradient = LinearGradient(
  colors: [Colors.grey, Colors.grey,],
);


