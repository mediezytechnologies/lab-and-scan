part of 'get_previous_completed_bloc.dart';

@freezed
class GetPreviousCompletedEvent with _$GetPreviousCompletedEvent {
  const factory GetPreviousCompletedEvent.getPrevious(String selectedDate) =
      _GetPrevious;
}
