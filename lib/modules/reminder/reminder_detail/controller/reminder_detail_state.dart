import 'package:equatable/equatable.dart';
import 'package:reminder_app_getx/common/values/enums.dart';

class ReminderDetailState extends Equatable {
  final ViewState viewState;
  final String currentPriority;

  ReminderDetailState({
    required this.viewState,
    required this.currentPriority,
  });

  ReminderDetailState copyWith({ViewState? viewState, String? currentPriority}) => ReminderDetailState(
        viewState: viewState ?? this.viewState,
        currentPriority: currentPriority ?? this.currentPriority,
      );

  @override
  List<Object?> get props => [this.viewState, this.currentPriority];
}
