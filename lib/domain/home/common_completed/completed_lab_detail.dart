import 'package:json_annotation/json_annotation.dart';

import 'document.dart';

part 'completed_lab_detail.g.dart';

@JsonSerializable()
class CompletedLabDetail {
	@JsonKey(name: 'appointment_id') 
	int? appointmentId;
	@JsonKey(name: 'lab_id') 
	int? labId;
	@JsonKey(name: 'clinic_id') 
	int? clinicId;
	@JsonKey(name: 'clinic_name') 
	String? clinicName;
	@JsonKey(name: 'doctor_id') 
	int? doctorId;
	@JsonKey(name: 'docter_image') 
	String? docterImage;
	@JsonKey(name: 'doctor_name') 
	String? doctorName;
	@JsonKey(name: 'patient_id') 
	int? patientId;
	String? firstname;
	String? mobileNo;
	@JsonKey(name: 'user_image') 
	String? userImage;
	String? dateofbirth;
	String? age;
	List<Document>? documents;

	CompletedLabDetail({
		this.appointmentId, 
		this.labId, 
		this.clinicId, 
		this.clinicName, 
		this.doctorId, 
		this.docterImage, 
		this.doctorName, 
		this.patientId, 
		this.firstname, 
		this.mobileNo, 
		this.userImage, 
		this.dateofbirth, 
		this.age, 
		this.documents, 
	});

	factory CompletedLabDetail.fromJson(Map<String, dynamic> json) {
		return _$CompletedLabDetailFromJson(json);
	}

	Map<String, dynamic> toJson() => _$CompletedLabDetailToJson(this);
}
