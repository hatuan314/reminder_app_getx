import 'package:flutter/material.dart';
import 'package:reminder_app_getx/common/values/layouts.dart';
import 'package:reminder_app_getx/theme/theme_color.dart';
import 'package:reminder_app_getx/theme/theme_text.dart';
import 'package:reminder_app_getx/widgets/touchable_widget.dart';

class OptionWidget extends StatelessWidget {
  final Widget title;
  final Function onPressed;

  const OptionWidget({Key? key,required this.title, required this.onPressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TouchableWidget(
      onPressed: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: Layouts.paddingHorizontalApp,
          vertical: Layouts.paddingVerticalApp,
        ),
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(Layouts.roundedRadius),
        ),
        child: Row(
          children: [
            Expanded(child: title),
            SizedBox(width: Layouts.paddingHorizontal8,),
            Icon(Icons.keyboard_arrow_right, color: AppColor.black,)
          ],
        ),
      ),
    );
  }
}
