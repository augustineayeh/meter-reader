import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/customer.dart';

part 'customer_model.g.dart';

@JsonSerializable()
// ignore: must_be_immutable
class CustomerModel extends Customer {
  CustomerModel({
    required this.id,
    required this.no,
    required this.name,
    this.phoneNo,
    this.phoneNo2,
    this.email,
    this.email2,
    this.digitalAddress,
    this.address,
    this.currentConsumption,
    this.averageConsumption,
    this.consumptionDate,
    this.consumptionTime,
    this.gpsLongitude,
    this.gpsLatitude,
    this.currentBalance,
    this.currentReading,
    this.readingDate,
    this.readingTime,
    this.readingStatus,
    this.customerStatus,
    this.previousReading,
    this.censusTaken,
    this.verified,
    this.customerCategory,
    this.operationalArea,
    this.station,
    this.route,
    this.meterNumber,
  }) : super(
            id: id,
            no: no,
            phoneNo: phoneNo,
            address: address,
            averageConsumption: averageConsumption,
            censusTaken: censusTaken,
            consumptionDate: consumptionDate,
            consumptionTime: consumptionTime,
            currentBalance: currentBalance,
            currentConsumption: currentConsumption,
            currentReading: currentReading,
            customerCategory: customerCategory,
            customerStatus: customerStatus,
            digitalAddress: digitalAddress,
            email2: email2,
            email: email,
            gpsLatitude: gpsLatitude,
            gpsLongitude: gpsLongitude,
            meterNumber: meterNumber,
            name: name,
            verified: verified,
            operationalArea: operationalArea,
            phoneNo2: phoneNo2,
            previousReading: previousReading,
            readingDate: readingDate,
            readingStatus: readingStatus,
            readingTime: readingTime,
            route: route,
            station: station);

  @override
  final String id;

  @override
  final String no;

  @override
  final String name;

  @override
  @JsonKey(name: 'phone_no')
  final String? phoneNo;

  @override
  @JsonKey(name: 'phone_no_2')
  final String? phoneNo2;

  @override
  final String? email;

  @override
  @JsonKey(name: 'email_2')
  final String? email2;

  @override
  @JsonKey(name: 'digital_address')
  final String? digitalAddress;

  @override
  final String? address;

  @override
  @JsonKey(name: 'current_consumption')
  final String? currentConsumption;

  @override
  @JsonKey(name: 'average_consumption')
  final String? averageConsumption;

  @override
  @JsonKey(name: 'consumption_date')
  final String? consumptionDate;

  @override
  @JsonKey(name: 'consumption_time')
  final String? consumptionTime;

  @override
  @JsonKey(name: 'gps_longitude')
  final String? gpsLongitude;

  @override
  @JsonKey(name: 'gps_latitude')
  final String? gpsLatitude;

  @override
  @JsonKey(name: 'current_balance')
  final String? currentBalance;

  @override
  @JsonKey(name: 'current_reading')
  final String? currentReading;

  @override
  @JsonKey(name: 'reading_date')
  final String? readingDate;

  @override
  @JsonKey(name: 'reading_time')
  final String? readingTime;

  @override
  @JsonKey(name: 'reading_status')
  final String? readingStatus;

  @override
  @JsonKey(name: 'customer_status')
  final String? customerStatus;

  @override
  @JsonKey(name: 'previous_reading')
  final String? previousReading;

  @override
  @JsonKey(name: 'census_token')
  final bool? censusTaken;

  @override
  final bool? verified;

  @override
  @JsonKey(name: 'customer_category')
  final String? customerCategory;

  @override
  @JsonKey(name: 'operational_area')
  final String? operationalArea;

  @override
  final String? station;

  @override
  final String? route;

  @override
  @JsonKey(name: 'meter_number')
  final String? meterNumber;

  factory CustomerModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerModelFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerModelToJson(this);
}
