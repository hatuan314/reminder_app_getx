import 'package:equatable/equatable.dart';
import 'package:reminder_app_getx/common/values/enums.dart';
import 'package:reminder_app_getx/data/models/group_model.dart';

class HomeState extends Equatable {
  final ViewState viewState;
  final List<GroupModel> groups;

  HomeState({required this.viewState,required this.groups});

  HomeState copyWith({
    ViewState? viewState,
    List<GroupModel>? groups
}) => HomeState(viewState: viewState ?? this.viewState, groups: groups ?? this.groups,);

  @override
  List<Object?> get props => [this.viewState, this.groups];
}