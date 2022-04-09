import 'package:json_annotation/json_annotation.dart';

part 'status.g.dart';

@JsonSerializable()
class Status {
	String? type;
	List<String>? enum;

	Status({this.type, this.enum});

	factory Status.fromJson(Map<String, dynamic> json) {
		return _$StatusFromJson(json);
	}

	Map<String, dynamic> toJson() => _$StatusToJson(this);
}
