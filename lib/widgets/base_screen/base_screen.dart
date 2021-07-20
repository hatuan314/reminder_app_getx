import 'package:flutter/material.dart';
import 'package:reminder_app_getx/theme/theme_color.dart';
import 'package:reminder_app_getx/widgets/base_screen/loader/loader_widget.dart';

class BaseScreen extends StatelessWidget {
  final Widget child;
  final bool isLoading;

  BaseScreen({required this.child, this.isLoading = false});

  @override
  Widget build(BuildContext context) {
    return LoaderWidget(
      isLoading: isLoading,
      child: Material(
          color: AppColor.backgroundColor,
          child: SafeArea(child: child)),
    );
  }

}