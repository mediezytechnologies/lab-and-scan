part of 'upload_document_bloc.dart';

@freezed
class UploadDocumentEvent with _$UploadDocumentEvent {
  const factory UploadDocumentEvent.upload({
    required String doctorId,
    required String clinicId,
    required String patientId,
    required String appointmentId,
    required List<int> labTestIds,
    required List<int> scanTestIds,
    String? note,
    String? imagePath,
  }) = _Upload;

  const factory UploadDocumentEvent.selectImageFromGallery(
      String? imageFromGallery) = _SelectImageFromGallery;

  const factory UploadDocumentEvent.selectImageFromCamera(
      String? imageFromCamera) = _SelectImageFromCamera;

  const factory UploadDocumentEvent.selectPdfFiles(String? pdfFromFiles) =
      _SelectPdfFiles;

  const factory UploadDocumentEvent.addToSelectLabTestIds(int index, int id) =
      _AddToLabSelectTestIds;

  const factory UploadDocumentEvent.addToSelectScanTestIds(int index, int id) =
      _AddToScanSelectTestIds;

  const factory UploadDocumentEvent.removeFromSelectLabTestIds(
      int index, int id) = _RemoveFromSelectLabTestIds;

  const factory UploadDocumentEvent.removeFromSelectScanTestIds(
      int index, int id) = _RemoveFromSelectScanTestIds;

  const factory UploadDocumentEvent.resetSelectedTestData() =
      _ResetSelectedTestData;
}
