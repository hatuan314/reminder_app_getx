import 'package:flutter/material.dart';

class TouchableWidget extends StatelessWidget {
  final Function onPressed;
  final Widget child;
  final EdgeInsets? padding;

  TouchableWidget({Key? key,required this.onPressed,required this.child, this.padding}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      behavior: HitTestBehavior.translucent,
      child: Container(
          padding: padding,
          child: child),
    );
  }

}