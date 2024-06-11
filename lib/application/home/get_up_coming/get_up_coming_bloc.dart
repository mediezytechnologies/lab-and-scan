import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mediezy_lab_scan/domain/home/get_upcoming/get_upcoming_repository.dart';
import '../../../domain/home/get_upcoming/model/up_coming_labdetail.dart';
part 'get_up_coming_event.dart';
part 'get_up_coming_state.dart';
part 'get_up_coming_bloc.freezed.dart';

@injectable
class GetUpComingBloc extends Bloc<GetUpComingEvent, GetUpComingState> {
  final GetUpcomingRepository getUpcomingRepository;
  GetUpComingBloc(this.getUpcomingRepository)
      : super(GetUpComingState.initial()) {
    on<_GetUpComing>((event, emit) async {
      emit(
        const GetUpComingState(
            getUpComing: [],
            isLoading: true,
            isError: false,
            message: '',
            status: false),
      );
      final result = await getUpcomingRepository.getUpComingRepo();
      emit(result.fold(
          (l) => state.copyWith(
                getUpComing: [],
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
          getUpComing: r,
        );
      }));
    });
  }
}
