


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubText extends StatelessWidget {
  const SubText({
    Key? key,
    required this.name,
    required this.color,
  }) : super(key: key);

  final String name;
  final Color color;

  @override
  Widget build(BuildContext context) {
    var colorToUse =
    MediaQuery.of(context).platformBrightness == Brightness.light
        ? color
        : Colors.black;
    return Row(
      children: [
        Text(
          name,
          style: Theme.of(context)
              .textTheme.bodyText2!
              .copyWith(color: colorToUse),
        ),
      ],
    );
  }
}
