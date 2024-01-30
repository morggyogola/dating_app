import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Widget widget;
  final Color color;
  final double radius;
  final double width;
  final IconData icon;

  const ButtonWidget(
      {super.key,
      required this.widget,
      required this.color,
      required this.radius,
      required this.width,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget,
            SizedBox(width: 8),
            Icon(
              icon,
              color: Colors.white,
            ),
        ]
        )
      ),
    );
  }
}
