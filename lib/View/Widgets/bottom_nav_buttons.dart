import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconBottomBar extends StatelessWidget {
  const IconBottomBar({Key? key,
    required this.text,
    required this.icon,
    required this.selected,
    required this.onPressed})
      : super(key: key);
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;

  final primaryColor = const Color(0xff4338CA);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            size: 25,
            color: selected ? primaryColor : Colors.black54,
          ),
        ),
      ],
    );
  }
}

