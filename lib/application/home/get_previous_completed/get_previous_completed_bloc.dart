import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/home/get_previous_completed/get_previous_completed_repository.dart';
import '../../../domain/home/get_previous_completed/model/previous_lab_detail.dart';
part 'get_previous_completed_event.dart';
part 'get_previous_completed_state.dart';
part 'get_previous_completed_bloc.freezed.dart';

@injectable
class GetPreviousCompletedBloc
    extends Bloc<GetPreviousCompletedEvent, GetPreviousCompletedState> {
  final GetPreviousCompletedRepository getPreviousCompletedRepository;
  GetPreviousCompletedBloc(this.getPreviousCompletedRepository)
      : super(GetPreviousCompletedState.initial()) {
    
    on<_GetPrevious>((event, emit) async {
      emit(
      const GetPreviousCompletedState(
            getPreviousCompleted: [],
            isLoading: true,
            isError: false,
            message: '',
            status: false),
      );
      final result = await getPreviousCompletedRepository
          .getPreviousCompletedRepo(selectedDate: event.selectedDate);
      emit(result.fold(
          (l) => state.copyWith(
                getPreviousCompleted: [],
                isLoading: false,
                isError: true,
                message: l.message!,
                status: false,
              ), (r) {
        return state.copyWith(
          isLoading: false,
          isError: false,
          message: state.message,
          status: state.status,
          getPreviousCompleted: r,
        );
      }));
    });
  }
}
