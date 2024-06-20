import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/home/incompleted_previous/incompleted_previous_repository.dart';
import '../../../domain/home/incompleted_previous/model/in_completed_previous_model/previous_un_completed_lab_detail.dart';
part 'incompleted_previous_event.dart';
part 'incompleted_previous_state.dart';
part 'incompleted_previous_bloc.freezed.dart';

@injectable
class IncompletedPreviousBloc
    extends Bloc<IncompletedPreviousEvent, IncompletedPreviousState> {
  final IncompletedPreviousRepository incompletedPreviousRepository;
  IncompletedPreviousBloc(this.incompletedPreviousRepository)
      : super(IncompletedPreviousState.initial()) {
    on<_IncompletedPrevious>((event, emit) async {
      emit(
        const IncompletedPreviousState(
            getPreviousInompleted: [],
            isLoading: true,
            isError: false,
            message: '',
            status: false),
      );
      final result = await incompletedPreviousRepository
          .getInCompletedPreviousRepo(selectedDate: event.selectedDate);
      emit(result.fold(
          (l) => state.copyWith(
                getPreviousInompleted: [],
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
          getPreviousInompleted: r,
        );
      }));
    });
  }
}
