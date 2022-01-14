import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grid_view/screens/home_screen.dart';

import 'constants/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const dummyAvatarUrl =
      'https://st2.depositphotos.com/2703645/5669/v/950/depositphotos_56695433-stock-illustration-female-avatar.jpg';

  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: AppColors.primaryWhiteColor,
          backgroundColor: AppColors.primaryWhiteColor,
          textTheme: const TextTheme(
              headline1: TextStyle(
                  color: AppColors.headerTextColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 28),
              headline2:
                  TextStyle(color: AppColors.headerTextColor, fontSize: 24),
              headline3: TextStyle(
                  color: AppColors.primaryWhiteColor,
                  fontSize: 28,
                  fontWeight: FontWeight.bold)),
          appBarTheme: const AppBarTheme(
              backgroundColor: Color(0xFFF7F9FB), elevation: 0),
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(secondary: const Color(0xFFF7F9FB))),
      darkTheme: ThemeData(
          primaryColor: AppColors.darkModeBackground,
          backgroundColor: Colors.red,
          textTheme: const TextTheme(
              headline1: TextStyle(
                  color: AppColors.primaryWhiteColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 28),
              headline2:
                  TextStyle(color: AppColors.primaryWhiteColor, fontSize: 24),
              headline3: TextStyle(
                  color: AppColors.primaryWhiteColor,
                  fontSize: 28,
                  fontWeight: FontWeight.bold)),
          appBarTheme: const AppBarTheme(
              backgroundColor: AppColors.darkModeBackground, elevation: 0),
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(secondary: AppColors.darkModeBackground)),
      home: Scaffold(
        body: Stack(
          children: const [
            HomeScreen(),
          ],
        ),
      ),
    );
  }
}
