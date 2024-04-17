// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class MeterReading extends Equatable {
  const MeterReading({
    this.previousReading,
    required this.currentReading,
    required this.consumption,
    this.billAmount,
    required this.meterStatus,
    required this.readingStatus,
    required this.longitude,
    required this.latitude,
    required this.customerName,
    this.isAdjusted,
    this.adjustedLink,
    this.route,
    this.operationalArea,
    this.station,
    this.period,
    required this.transactionId,
    required this.isSentForBilling,
    this.image,
    required this.customerNo,
    required this.meterNo,
    required this.readerNo,
  });

  final String? previousReading;
  final String currentReading;
  final String consumption;
  final String? billAmount;
  final String meterStatus;
  final String readingStatus;
  final String longitude;
  final String latitude;
  final String customerName;
  final bool? isAdjusted;
  final String? adjustedLink;
  final String? route;
  final String? operationalArea;
  final String? station;
  final String? period;
  final String transactionId;
  final bool isSentForBilling;
  final String? image;
  final String customerNo;
  final String meterNo;
  final String readerNo;

  @override
  List<Object?> get props {
    return [
      previousReading,
      currentReading,
      consumption,
      billAmount,
      meterStatus,
      readingStatus,
      longitude,
      latitude,
      customerName,
      isAdjusted,
      adjustedLink,
      route,
      operationalArea,
      station,
      period,
      transactionId,
      isSentForBilling,
      image,
      customerNo,
      meterNo,
      readerNo,
    ];
  }
}
