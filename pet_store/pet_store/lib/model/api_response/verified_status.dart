import 'package:json_annotation/json_annotation.dart';

part 'verified_status.g.dart';

@JsonSerializable()
class VerifiedStatus {
	String? type;
	List<String>? enum;

	VerifiedStatus({this.type, this.enum});

	factory VerifiedStatus.fromJson(Map<String, dynamic> json) {
		return _$VerifiedStatusFromJson(json);
	}

	Map<String, dynamic> toJson() => _$VerifiedStatusToJson(this);
}
