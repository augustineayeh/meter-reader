// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meter_reading_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MeterReadingModel _$MeterReadingModelFromJson(Map<String, dynamic> json) =>
    MeterReadingModel(
      previousReading: json['previous_reading'] as String?,
      currentReading: json['current_reading'] as String,
      consumption: json['consumption'] as String,
      billAmount: json['bill_amount'] as String?,
      meterStatus: json['meter_status'] as String,
      readingStatus: json['reading_status'] as String,
      longitude: json['longitude'] as String,
      latitude: json['latitude'] as String,
      customerName: json['customer_name'] as String,
      isAdjusted: json['adjusted'] as bool?,
      adjustedLink: json['adjusted_link'] as String?,
      route: json['route'] as String?,
      operationalArea: json['operational_area'] as String?,
      station: json['station'] as String?,
      period: json['period'] as String?,
      transactionId: json['transaction_id'] as String,
      isSentForBilling: json['sent_for_billing'] as bool,
      image: json['image'] as String?,
      customerNo: json['customer_no'] as String,
      meterNo: json['meter_no'] as String,
      readerNo: json['reader_no'] as String,
    );

Map<String, dynamic> _$MeterReadingModelToJson(MeterReadingModel instance) =>
    <String, dynamic>{
      'previous_reading': instance.previousReading,
      'current_reading': instance.currentReading,
      'consumption': instance.consumption,
      'bill_amount': instance.billAmount,
      'meter_status': instance.meterStatus,
      'reading_status': instance.readingStatus,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'customer_name': instance.customerName,
      'adjusted': instance.isAdjusted,
      'adjusted_link': instance.adjustedLink,
      'route': instance.route,
      'operational_area': instance.operationalArea,
      'station': instance.station,
      'period': instance.period,
      'transaction_id': instance.transactionId,
      'sent_for_billing': instance.isSentForBilling,
      'image': instance.image,
      'customer_no': instance.customerNo,
      'meter_no': instance.meterNo,
      'reader_no': instance.readerNo,
    };
