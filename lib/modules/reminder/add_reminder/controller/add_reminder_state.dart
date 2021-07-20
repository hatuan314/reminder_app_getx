import 'package:equatable/equatable.dart';
import 'package:reminder_app_getx/common/values/enums.dart';
import 'package:reminder_app_getx/data/models/group_model.dart';

class AddReminderState extends Equatable {
  final ViewState viewState;
  final GroupModel? currenGroup;

  AddReminderState({required this.viewState, this.currenGroup,});

  AddReminderState copyWith({ViewState? viewState, GroupModel? currenGroup}) => AddReminderState(
        viewState: viewState ?? this.viewState,
    currenGroup: currenGroup ?? this.currenGroup,
      );

  @override
  List<Object?> get props => [this.viewState, this.currenGroup];
}
