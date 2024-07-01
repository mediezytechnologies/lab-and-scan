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
    required Set<int> selectedLabTestIndicesSet,
    required List<int> selectedLabTestIdsList,
    required Set<int> selectedScanTestIndicesSet,
    required List<int> selectedScanTestIdsList,
  }) = _Initial;

  factory UploadDocumentState.initial() => const UploadDocumentState(
        selectedLabTestIdsList: [],
        selectedLabTestIndicesSet: {},
        selectedScanTestIdsList: [],
        selectedScanTestIndicesSet: {},
        isError: false,
        isLoading: false,
        message: '',
        status: false,
      );
}
