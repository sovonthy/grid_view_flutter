import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grid_view/widgets/tab_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RoomTabBarView()
    );
  }
}
