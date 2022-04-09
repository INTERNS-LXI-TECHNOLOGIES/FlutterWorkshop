import 'package:json_annotation/json_annotation.dart';

import '200.dart';
import '401.dart';
import '403.dart';
import '404.dart';

part 'responses.g.dart';

@JsonSerializable()
class Responses {
	200? 200;
	401? 401;
	403? 403;
	404? 404;

	Responses({this.200, this.401, this.403, this.404});

	factory Responses.fromJson(Map<String, dynamic> json) {
		return _$ResponsesFromJson(json);
	}

	Map<String, dynamic> toJson() => _$ResponsesToJson(this);
}
