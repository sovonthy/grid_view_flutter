import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grid_view/widgets/card_item_view.dart';

class CardTabView extends StatefulWidget {
  const CardTabView({Key? key}) : super(key: key);

  @override
  _CardTabViewState createState() => _CardTabViewState();
}

class _CardTabViewState extends State<CardTabView> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) {
          return CardItemView();
        });
  }
}
