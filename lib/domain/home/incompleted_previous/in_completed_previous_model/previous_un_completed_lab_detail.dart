import 'package:json_annotation/json_annotation.dart';

import 'labtest.dart';

part 'previous_un_completed_lab_detail.g.dart';

@JsonSerializable()
class PreviousUnCompletedLabDetail {
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
	@JsonKey(name: 'doctor_name') 
	String? doctorName;
	@JsonKey(name: 'patient_id') 
	int? patientId;
	String? firstname;
	String? mobileNo;
	@JsonKey(name: 'user_image') 
	String? userImage;
	String? age;
	List<Labtest>? labtests;

	PreviousUnCompletedLabDetail({
		this.appointmentId, 
		this.labId, 
		this.clinicId, 
		this.clinicName, 
		this.doctorId, 
		this.doctorName, 
		this.patientId, 
		this.firstname, 
		this.mobileNo, 
		this.userImage, 
		this.age, 
		this.labtests, 
	});

	factory PreviousUnCompletedLabDetail.fromJson(Map<String, dynamic> json) {
		return _$PreviousUnCompletedLabDetailFromJson(json);
	}

	Map<String, dynamic> toJson() => _$PreviousUnCompletedLabDetailToJson(this);
}
