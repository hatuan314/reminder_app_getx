import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reminder_app_getx/common/utils/color_utils.dart';

import 'package:reminder_app_getx/common/values/layouts.dart';
import 'package:reminder_app_getx/data/models/group_model.dart';
import 'package:reminder_app_getx/theme/theme_color.dart';
import 'package:reminder_app_getx/theme/theme_text.dart';
import 'package:reminder_app_getx/widgets/touchable_widget.dart';

class GroupItemWidget extends StatelessWidget {
  final GroupModel group;
  final Function onPressed;
  static double iconGroupSize = 36.h;

  const GroupItemWidget({Key? key, required this.group, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TouchableWidget(
      onPressed: onPressed,
      child: Card(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Layouts.paddingHorizontalApp,
            vertical: Layouts.paddingVertical8,
          ),
          child: Row(
            children: [
              Container(
                width: iconGroupSize,
                height: iconGroupSize,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorUtils.convertColor(group.color!),
                ),
                child: Icon(
                  Icons.list,
                  color: AppColor.white,
                  size: iconGroupSize / 2,
                ),
              ),
              SizedBox(
                width: Layouts.paddingHorizontalApp,
              ),
              Expanded(
                  child: Text(
                '${group.name}',
                style: ThemeText.body2,
              ))
            ],
          ),
        ),
      ),
    );
  }
}
