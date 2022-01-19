import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grid_view/screens/home_screen.dart';
import 'package:grid_view/themes/dark.dart';
import 'package:grid_view/themes/light.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme:  darkTheme,
      themeMode: ThemeMode.system,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: const Locale('km', ''),
      supportedLocales: const [
        Locale('en', ''),
        Locale('km', ''),
      ],
      home: const HomeScreen(),
    );
  }
}
