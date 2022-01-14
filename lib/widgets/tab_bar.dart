import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grid_view/widgets/card_tab_view.dart';

class RoomTabBarView extends StatelessWidget {
  const RoomTabBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(
                Icons.settings,
                color: Color(0xff6D6E70),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Row(children: <Widget>[
              Text(
                "25C".toUpperCase(),
                style: const TextStyle(
                  color: Color(0xff6D6E70),
                ),
              ),
            ]),
            actions: const [
              Icon(
                Icons.notifications_active,
                color: Colors.black,
              ),
              SizedBox(width: 24)
            ],
            backgroundColor: Colors.white,
            bottom: const TabBar(
              isScrollable: true,
              labelColor: Colors.black,
              tabs: [
                Tab(icon: Text("LIVING ROOM")),
                Tab(icon: Text("KITCHEN ROOM")),
                Tab(icon: Text("DRAWING ROOM")),
                Tab(icon: Text("DRAWING ROOM")),
                Tab(icon: Text("DRAWING ROOM")),
              ],
            ),
          ),
          body: CardTabView(),
        ),
      ),
    );
  }
}
