import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:reminder_app_getx/common/values/enums.dart';

class ReminderDetailState extends Equatable {
  final ViewState viewState;
  final String currentPriority;
  final bool switchDate;
  final bool switchTimer;
  final DateTime date;
  final TimeOfDay timer;

  ReminderDetailState({
    required this.viewState,
    required this.currentPriority,
    required this.switchDate,
    required this.switchTimer,
    required this.date,
    required this.timer,
  });

  ReminderDetailState copyWith({
    ViewState? viewState,
    String? currentPriority,
    bool? switchDate,
    bool? switchTimer,
    DateTime? date,
    TimeOfDay? timer,
  }) =>
      ReminderDetailState(
        viewState: viewState ?? this.viewState,
        currentPriority: currentPriority ?? this.currentPriority,
        switchDate: switchDate ?? this.switchDate,
        switchTimer: switchTimer ?? this.switchTimer,
        date: date ?? this.date,
        timer: timer ?? this.timer,
      );

  @override
  List<Object?> get props => [
        this.viewState,
        this.currentPriority,
        this.switchDate,
        this.switchTimer,
        this.date,
        this.timer,
      ];
}
