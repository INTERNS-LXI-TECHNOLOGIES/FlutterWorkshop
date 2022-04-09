import 'package:json_annotation/json_annotation.dart';

part 'service_status.g.dart';

@JsonSerializable()
class ServiceStatus {
	String? type;
	List<String>? enum;

	ServiceStatus({this.type, this.enum});

	factory ServiceStatus.fromJson(Map<String, dynamic> json) {
		return _$ServiceStatusFromJson(json);
	}

	Map<String, dynamic> toJson() => _$ServiceStatusToJson(this);
}
