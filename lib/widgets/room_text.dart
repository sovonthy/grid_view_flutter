import 'package:flutter/material.dart';
import 'package:grid_view/constants/app_colors.dart';

class TitleText extends StatelessWidget {
  const TitleText({
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
              .textTheme
              .headline6!
              .copyWith(color: colorToUse),
        ),
      ],
    );
  }
}
