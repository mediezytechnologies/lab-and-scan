part of 'upload_document_bloc.dart';

@freezed
class UploadDocumentState with _$UploadDocumentState {
  const factory UploadDocumentState({
    required bool isLoading,
    required bool isError,
    required String message,
    required bool status,
    String? selectedDocument,
    UploadDocumentModel? model,
    required Set<int> selectedTestIndicesSet,
    required List<int> selectedTestIdsList,
  }) = _Initial;

  factory UploadDocumentState.initial() => const UploadDocumentState(
        selectedTestIdsList: [],
        selectedTestIndicesSet: {},
        isError: false,
        isLoading: false,
        message: '',
        status: false,
      );
}
