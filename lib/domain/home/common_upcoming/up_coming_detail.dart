import 'package:json_annotation/json_annotation.dart';

import 'labtest.dart';
import 'scantest.dart';

part 'up_coming_detail.g.dart';

@JsonSerializable()
class UpComingDetail {
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
	String? age;
	List<Labtest>? labtests;
	List<Scantest>? scantests;

	UpComingDetail({
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
		this.age, 
		this.labtests, 
		this.scantests, 
	});

	factory UpComingDetail.fromJson(Map<String, dynamic> json) {
		return _$UpComingDetailFromJson(json);
	}

	Map<String, dynamic> toJson() => _$UpComingDetailToJson(this);
}
