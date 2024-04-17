// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class FailedReading extends Equatable {
  const FailedReading({
    required this.gpsLatitude,
    required this.gpsLongitude,
    required this.reader,
    required this.customer,
    required this.reason,
  });

  final String gpsLatitude;
  final String gpsLongitude;
  final String reader;
  final String customer;
  final String reason;

  static const empty = FailedReading(
    customer: '',
    gpsLatitude: '',
    gpsLongitude: '',
    reader: '',
    reason: '',
  );

  @override
  List<Object?> get props {
    return [
      gpsLatitude,
      gpsLongitude,
      reader,
      customer,
      reason,
    ];
  }
}
