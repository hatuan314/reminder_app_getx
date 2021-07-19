import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class AddGroupState extends Equatable {
  final Color color;
  final String name;
  final bool isActiveDoneBtn;

  AddGroupState({required this.color, required this.name, required this.isActiveDoneBtn});

  AddGroupState copyWith({Color? color, String? name, bool? isActiveDoneBtn}) => AddGroupState(
      color: color ?? this.color, name: name ?? this.name, isActiveDoneBtn: isActiveDoneBtn ?? this.isActiveDoneBtn);

  @override
  List<Object?> get props => [this.color, this.name, this.isActiveDoneBtn];
}
