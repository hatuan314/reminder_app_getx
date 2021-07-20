import 'package:equatable/equatable.dart';
import 'package:reminder_app_getx/common/values/enums.dart';
import 'package:reminder_app_getx/data/models/group_model.dart';

class GroupListState extends Equatable {
  final ViewState viewState;
  final List<GroupModel> groupList;

  GroupListState({required this.viewState, required this.groupList});

  GroupListState copyWith({ViewState? viewState, List<GroupModel>? groupList}) => GroupListState(
    viewState: viewState ?? this.viewState,
    groupList: groupList ?? this.groupList,
  );

  @override
  List<Object?> get props => [this.viewState, this.groupList];

}