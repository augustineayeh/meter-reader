// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'failed_reading_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FailedReadingModel _$FailedReadingModelFromJson(Map<String, dynamic> json) =>
    FailedReadingModel(
      gpsLatitude: json['gpsLatitude'] as String,
      gpsLongitude: json['gpsLongitude'] as String,
      reader: json['reader'] as String,
      customer: json['customer'] as String,
      reason: json['reason'] as String,
    );

Map<String, dynamic> _$FailedReadingModelToJson(FailedReadingModel instance) =>
    <String, dynamic>{
      'gpsLatitude': instance.gpsLatitude,
      'gpsLongitude': instance.gpsLongitude,
      'reader': instance.reader,
      'customer': instance.customer,
      'reason': instance.reason,
    };
