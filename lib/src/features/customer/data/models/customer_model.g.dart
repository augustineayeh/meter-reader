// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerModel _$CustomerModelFromJson(Map<String, dynamic> json) =>
    CustomerModel(
      id: json['id'] as String,
      no: json['no'] as String,
      name: json['name'] as String,
      phoneNo: json['phone_no'] as String?,
      phoneNo2: json['phone_no_2'] as String?,
      email: json['email'] as String?,
      email2: json['email_2'] as String?,
      digitalAddress: json['digital_address'] as String?,
      address: json['address'] as String?,
      currentConsumption: json['current_consumption'] as String?,
      averageConsumption: json['average_consumption'] as String?,
      consumptionDate: json['consumption_date'] as String?,
      consumptionTime: json['consumption_time'] as String?,
      gpsLongitude: json['gps_longitude'] as String?,
      gpsLatitude: json['gps_latitude'] as String?,
      currentBalance: json['current_balance'] as String?,
      currentReading: json['current_reading'] as String?,
      readingDate: json['reading_date'] as String?,
      readingTime: json['reading_time'] as String?,
      readingStatus: json['reading_status'] as String?,
      customerStatus: json['customer_status'] as String?,
      previousReading: json['previous_reading'] as String?,
      censusTaken: json['census_token'] as bool?,
      verified: json['verified'] as bool?,
      customerCategory: json['customer_category'] as String?,
      operationalArea: json['operational_area'] as String?,
      station: json['station'] as String?,
      route: json['route'] as String?,
      meterNumber: json['meter_number'] as String?,
    );

Map<String, dynamic> _$CustomerModelToJson(CustomerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'no': instance.no,
      'name': instance.name,
      'phone_no': instance.phoneNo,
      'phone_no_2': instance.phoneNo2,
      'email': instance.email,
      'email_2': instance.email2,
      'digital_address': instance.digitalAddress,
      'address': instance.address,
      'current_consumption': instance.currentConsumption,
      'average_consumption': instance.averageConsumption,
      'consumption_date': instance.consumptionDate,
      'consumption_time': instance.consumptionTime,
      'gps_longitude': instance.gpsLongitude,
      'gps_latitude': instance.gpsLatitude,
      'current_balance': instance.currentBalance,
      'current_reading': instance.currentReading,
      'reading_date': instance.readingDate,
      'reading_time': instance.readingTime,
      'reading_status': instance.readingStatus,
      'customer_status': instance.customerStatus,
      'previous_reading': instance.previousReading,
      'census_token': instance.censusTaken,
      'verified': instance.verified,
      'customer_category': instance.customerCategory,
      'operational_area': instance.operationalArea,
      'station': instance.station,
      'route': instance.route,
      'meter_number': instance.meterNumber,
    };
