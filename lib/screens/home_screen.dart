import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grid_view/widgets/tab_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.appTitle),
      ),
      body: Container(
        color: Theme.of(context).primaryColor,
        child: RoomTabBarView(),
      ),
    );
  }
}
