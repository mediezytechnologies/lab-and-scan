// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mediezy_lab_scan/domain/home/upload_document/upload_document_repository.dart';
import '../../../domain/core/error/error_model.dart';
import '../../../domain/home/upload_document/model/upload_document_model.dart';
part 'upload_document_event.dart';
part 'upload_document_state.dart';
part 'upload_document_bloc.freezed.dart';

@injectable
class UploadDocumentBloc
    extends Bloc<UploadDocumentEvent, UploadDocumentState> {
  final UploadDocumentRepository uploadDocumentRepository;
  UploadDocumentBloc(this.uploadDocumentRepository)
      : super(UploadDocumentState.initial()) {
    on<_SelectImageFromGallery>((event, emit) {
      emit(
        state.copyWith(selectedDocument: event.imageFromGallery, status: false),
      );
    });

    on<_SelectImageFromCamera>((event, emit) {
      emit(
        state.copyWith(selectedDocument: event.imageFromCamera, status: false),
      );
    });

    on<_SelectPdfFiles>((event, emit) {
      emit(
        state.copyWith(selectedDocument: event.pdfFromFiles, status: false),
      );
    });

    on<_Upload>((event, emit) async {
      emit(
        state.copyWith(
            isLoading: true, isError: false, message: '', status: false),
      );

      final _result = await uploadDocumentRepository.updateUserRepo(
          doctorId: event.doctorId,
          clinicId: event.clinicId,
          patientId: event.patientId,
          appointmentId: event.appointmentId,
          imagePath: event.imagePath,
          note: event.note,
          testIds: event.testIds);

      final _state = _result.fold(
        (ErrorModel error) {
          return state.copyWith(
              isLoading: false,
              isError: true,
              message: error.message.toString(),
              status: false);
        },
        (UploadDocumentModel model) {
          return state.copyWith(
              isLoading: false,
              isError: false,
              message: model.message.toString(),
              status: true,
              model: model);
        },
      );
      emit(_state);
    });

    on<_AddToSelectTestIds>((event, emit) async {
      emit(state.copyWith(selectedTestIdsList: [
        ...state.selectedTestIdsList,
        event.id
      ], selectedTestIndicesSet: {
        ...state.selectedTestIndicesSet,
        event.index
      }, status: false));
    });

    on<_RemoveFromSelectTestIds>((event, emit) async {
      emit(state.copyWith(
          selectedTestIdsList:
              state.selectedTestIdsList.where((id) => id != event.id).toList(),
          selectedTestIndicesSet: state.selectedTestIndicesSet
              .where((index) => index != event.index)
              .toSet(),
          status: false));
    });

    on<_ResetSelectedTestData>((event, emit) async {
      emit(state.copyWith(
        selectedTestIdsList: [],
        selectedTestIndicesSet: {},
        selectedDocument: null,
      ));
    });
    
  }
}
