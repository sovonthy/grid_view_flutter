import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grid_view/model/album.dart';
import 'package:grid_view/widgets/room_text.dart';
import 'package:grid_view/widgets/sub_title_text.dart';
import 'package:http/http.dart' as http;

class CardItemView extends StatefulWidget {
  const CardItemView({Key? key}) : super(key: key);

  @override
  _CardItemViewState createState() => _CardItemViewState();
}

class _CardItemViewState extends State<CardItemView> {
  bool isChecked = false;
  Color backgroundColor = Colors.white;
  Color textColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.white70, width: 1),
        borderRadius: BorderRadius.circular(24),
      ),
      margin: const EdgeInsets.only(
        left: 12,
        right: 12,
        top: 12,
        bottom: 12,
      ),
      color: isChecked ? Colors.lightBlueAccent : Colors.white,
      child: Container(
        margin: EdgeInsets.only(left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              IconData(0xe687, fontFamily: 'MaterialIcons'),
              color: isChecked ? Colors.white : Colors.black,
            ),
            TitleText(
              name: "Smart TV",
              color: isChecked ? Colors.white : Colors.black,
            ),
            SubText(
                name: "Samsung",
                color: isChecked ? Colors.white : Colors.black),
            Transform.scale(
              scale: 0.8,
              alignment: Alignment(-2, 0.6),
              child: CupertinoSwitch(
                thumbColor: Colors.lightBlueAccent,
                activeColor: Colors.white,
                value: isChecked,
                onChanged: (data) {
                  setState(() {
                    isChecked = data;
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
