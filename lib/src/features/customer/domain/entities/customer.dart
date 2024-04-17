import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class Customer extends Equatable {
  Customer({
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
  });

  static Customer empty = Customer(
    id: '',
    no: '',
    name: '',
    phoneNo: '',
    phoneNo2: '',
    email: '',
    email2: '',
    digitalAddress: '',
    address: '',
    currentConsumption: '',
    averageConsumption: '',
    consumptionDate: '',
    consumptionTime: '',
    gpsLongitude: '',
    gpsLatitude: '',
    currentBalance: '',
    currentReading: '',
    readingDate: '',
    readingTime: '',
    readingStatus: '',
    customerStatus: '',
    previousReading: '',
    censusTaken: false,
    verified: false,
    customerCategory: '',
    operationalArea: '',
    station: '',
    route: '',
    meterNumber: '',
  );
  String id;
  String no;
  String name;
  String? phoneNo;
  String? phoneNo2;
  String? email;
  String? email2;
  String? digitalAddress;
  String? address;
  String? currentConsumption;
  String? averageConsumption;
  String? consumptionDate;
  String? consumptionTime;
  String? gpsLongitude;
  String? gpsLatitude;
  String? currentBalance;
  String? currentReading;
  String? readingDate;
  String? readingTime;
  String? readingStatus;
  String? customerStatus;
  String? previousReading;
  bool? censusTaken;
  bool? verified;
  String? customerCategory;
  String? operationalArea;
  String? station;
  String? route;
  String? meterNumber;

  @override
  List<Object?> get props {
    return [
      id,
      no,
      name,
      phoneNo,
      phoneNo2,
      email,
      email2,
      digitalAddress,
      address,
      currentConsumption,
      averageConsumption,
      consumptionDate,
      consumptionTime,
      gpsLongitude,
      gpsLatitude,
      currentBalance,
      currentReading,
      readingDate,
      readingTime,
      readingStatus,
      customerStatus,
      previousReading,
      censusTaken,
      verified,
      customerCategory,
      operationalArea,
      station,
      route,
      meterNumber,
    ];
  }
}
