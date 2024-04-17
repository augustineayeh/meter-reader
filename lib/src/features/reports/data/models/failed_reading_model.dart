// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:nedco_meter_reader/src/features/reports/domain/entities/failed_reading.dart';

part 'failed_reading_model.g.dart';

@JsonSerializable()
class FailedReadingModel extends FailedReading {
  @override
  final String gpsLatitude;
  @override
  final String gpsLongitude;
  @override
  final String reader;
  @override
  final String customer;
  @override
  final String reason;

  const FailedReadingModel({
    required this.gpsLatitude,
    required this.gpsLongitude,
    required this.reader,
    required this.customer,
    required this.reason,
  }) : super(
          customer: customer,
          gpsLatitude: gpsLatitude,
          gpsLongitude: gpsLongitude,
          reason: reason,
          reader: reader,
        );

  factory FailedReadingModel.fromJson(Map<String, dynamic> json) =>
      _$FailedReadingModelFromJson(json);

  Map<String, dynamic> toJson() => _$FailedReadingModelToJson(this);
}
