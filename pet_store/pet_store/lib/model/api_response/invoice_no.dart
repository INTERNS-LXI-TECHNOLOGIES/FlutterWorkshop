import 'package:json_annotation/json_annotation.dart';

part 'invoice_no.g.dart';

@JsonSerializable()
class InvoiceNo {
  String? type;
  String? pattern;

  InvoiceNo({this.type, this.pattern});

  factory InvoiceNo.fromJson(Map<String, dynamic> json) {
    return _$InvoiceNoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$InvoiceNoToJson(this);
}
