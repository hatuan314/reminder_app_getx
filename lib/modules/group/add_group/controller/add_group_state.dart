import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:reminder_app_getx/common/values/enums.dart';

class AddGroupState extends Equatable {
  final ViewState viewState;
  final Color color;
  final String name;
  final bool isActiveDoneBtn;

  AddGroupState({
    required this.viewState,
    required this.color,
    required this.name,
    required this.isActiveDoneBtn,
  });

  AddGroupState copyWith({ViewState? viewState, Color? color, String? name, bool? isActiveDoneBtn}) => AddGroupState(
        viewState: viewState ?? this.viewState,
        color: color ?? this.color,
        name: name ?? this.name,
        isActiveDoneBtn: isActiveDoneBtn ?? this.isActiveDoneBtn,
      );

  @override
  List<Object?> get props => [
        this.viewState,
        this.color,
        this.name,
        this.isActiveDoneBtn,
      ];
}
