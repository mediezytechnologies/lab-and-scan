part of 'upload_document_bloc.dart';

@freezed
class UploadDocumentEvent with _$UploadDocumentEvent {
  const factory UploadDocumentEvent.upload({
    required String doctorId,
    required String clinicId,
    required String patientId,
    required String appointmentId,
    String? note,
    String? imagePath,
  }) = _Upload;

  
  const factory UploadDocumentEvent.selectImageFromGallery(
      String? imageFromGallery) = _SelectImageFromGallery;
  const factory UploadDocumentEvent.selectImageFromCamera(
      String? imageFromCamera) = _SelectImageFromCamera;
   const factory UploadDocumentEvent.selectPdfFiles(
      String? pdfFromFiles) = _SelectPdfFiles; 
}
