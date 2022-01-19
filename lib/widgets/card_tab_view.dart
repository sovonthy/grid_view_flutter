import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grid_view/model/album.dart';
import 'package:grid_view/model/user.dart';
import 'package:grid_view/screens/detail_screen.dart';
import 'package:http/http.dart' as http;

import 'card_item_view.dart';

class CardTabView extends StatefulWidget {
  const CardTabView({Key? key}) : super(key: key);

  @override
  _CardTabViewState createState() => _CardTabViewState();
}

class _CardTabViewState extends State<CardTabView> {

  List<Album> albums = [];
  List<User> users = [];

  void fetchAlbum() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));

    if (response.statusCode == 200) {
      // Album album = Album.fromJson(jsonDecode(response.body));
      // print(album.toJson());

      List jsonValue = jsonDecode(response.body);
      List<Album> list = jsonValue.map((value) => Album.fromJson(value)).toList();
      albums.addAll(list);
    } else {
      throw Exception('Failed to load album');
    }
  }

  void getUser() async {
    final response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));

    List jsonValue = jsonDecode(response.body);
    List<User> list = jsonValue.map((value) => User.fromJson(value)).toList();
    users.addAll(list);
  }

  @override
  void initState() {
    super.initState();
    fetchAlbum();
    getUser();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) {
          // return TextButton(
          //   onPressed: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) => const DetailScreen(),
          //         settings: RouteSettings(
          //           arguments: users[index],
          //         ),
          //       ),
          //     );
          //   },
          //   child: Text("Click"),
          // );

          return CardItemView();
        });


  }
}
