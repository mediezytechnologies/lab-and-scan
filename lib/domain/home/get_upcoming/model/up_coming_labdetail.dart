import 'package:json_annotation/json_annotation.dart';

part 'up_coming_labdetail.g.dart';

@JsonSerializable()
class UpComingLabdetail {
	@JsonKey(name: 'appointment_id') 
	int? appointmentId;
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
	String? age;

	UpComingLabdetail({
		this.appointmentId, 
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
		this.age, 
	});

	factory UpComingLabdetail.fromJson(Map<String, dynamic> json) {
		return _$UpComingLabdetailFromJson(json);
	}

	Map<String, dynamic> toJson() => _$UpComingLabdetailToJson(this);
}
