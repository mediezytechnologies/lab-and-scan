import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mediezy_lab_scan/domain/home/get_completed/get_completed_repository.dart';
import '../../../domain/home/get_completed/model/completed_lab_detail.dart';
part 'get_completed_event.dart';
part 'get_completed_state.dart';
part 'get_completed_bloc.freezed.dart';

@injectable
class GetCompletedBloc extends Bloc<GetCompletedEvent, GetCompletedState> {
  final GetCompletedRepository getCompletedRepository;
  GetCompletedBloc(this.getCompletedRepository)
      : super(GetCompletedState.initial()) {
    on<_GetCompleted>((event, emit) async {
      emit(
        const GetCompletedState(
            getCompleted: [],
            isLoading: true,
            isError: false,
            message: '',
            status: false),
      );
      final result = await getCompletedRepository.getUpCompletedRepo();
      emit(result.fold(
          (l) => state.copyWith(
                getCompleted: [],
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
          getCompleted: r,
        );
      }));
    });
  }
}
