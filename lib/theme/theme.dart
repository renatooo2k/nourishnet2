import 'package:flutter/material.dart';

const kGreen = Color(0xFF2E7D32);
const kBlue = Color(0xFF0277BD);
const kOrange = Color(0xFFFFA000);
const kWhite = Color(0xFFF5F5F5);
const kBlack = Color(0xFF424242);
const kYellow = Color(0xFFFFD600);
const kRed = Color(0xFFD32F2F);

final ThemeData appTheme = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: kWhite,
  primaryColor: kGreen,
  colorScheme: ColorScheme.fromSeed(seedColor: kGreen),
  appBarTheme: const AppBarTheme(
    backgroundColor: kWhite,
    foregroundColor: kBlack,
    elevation: 0,
    centerTitle: false,
  ),
  inputDecorationTheme: const InputDecorationTheme(
    border: OutlineInputBorder(),
  ),
  textTheme: const TextTheme(
    titleLarge: TextStyle(color: kBlack, fontWeight: FontWeight.bold),
    bodyMedium: TextStyle(color: kBlack),
  ),
);
