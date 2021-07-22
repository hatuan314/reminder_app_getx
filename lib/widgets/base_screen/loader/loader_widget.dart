import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reminder_app_getx/theme/theme_color.dart';

import 'loader_constants.dart';

class LoaderWidget extends StatelessWidget {
  final Widget child;
  final bool isLoading;

  LoaderWidget({required this.child,required this.isLoading});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        child,
        Visibility(
            visible: isLoading,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: AppColor.black.withOpacity(
                  LoaderConstants.loaderBackgroundOpacity),
              child: Center(
                child: CircularProgressIndicator(),
              ),
            )),
      ],
    );
  }

}