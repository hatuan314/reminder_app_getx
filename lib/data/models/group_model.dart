import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

part 'group_model.g.dart';
@HiveType(typeId: 0)
class GroupModel {
  @HiveField(0)
  String? name;
  @HiveField(1)
  int? color;
  @HiveField(2)
  DateTime? createAt;
  @HiveField(3)
  DateTime? lastTime;

  GroupModel({this.name, this.color, this.createAt, this.lastTime});
}