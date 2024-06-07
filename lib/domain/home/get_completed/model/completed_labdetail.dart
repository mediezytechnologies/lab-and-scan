import 'package:json_annotation/json_annotation.dart';

part 'completed_labdetail.g.dart';

@JsonSerializable()
class CompletedLabdetail {
	@JsonKey(name: 'lab_id') 
	int? labId;
	String? labtest;
	@JsonKey(name: 'clinic_id') 
	int? clinicId;
	@JsonKey(name: 'clinic_name') 
	String? clinicName;
	@JsonKey(name: 'doctor_id') 
	int? doctorId;
	@JsonKey(name: 'doctor_name') 
	String? doctorName;
	@JsonKey(name: 'patient_id') 
	int? patientId;
	String? firstname;
	String? mobileNo;
	@JsonKey(name: 'user_image') 
	String? userImage;
	@JsonKey(name: 'lab_document_id') 
	int? labDocumentId;
	@JsonKey(name: 'document_upload') 
	String? documentUpload;
	String? notes;
	String? age;

	CompletedLabdetail({
		this.labId, 
		this.labtest, 
		this.clinicId, 
		this.clinicName, 
		this.doctorId, 
		this.doctorName, 
		this.patientId, 
		this.firstname, 
		this.mobileNo, 
		this.userImage, 
		this.labDocumentId, 
		this.documentUpload, 
		this.notes, 
		this.age, 
	});

	factory CompletedLabdetail.fromJson(Map<String, dynamic> json) {
		return _$CompletedLabdetailFromJson(json);
	}

	Map<String, dynamic> toJson() => _$CompletedLabdetailToJson(this);
}
