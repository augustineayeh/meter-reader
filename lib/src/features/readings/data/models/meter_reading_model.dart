// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:nedco_meter_reader/src/features/readings/domain/entities/meter_reading.dart';

part 'meter_reading_model.g.dart';

@JsonSerializable()
class MeterReadingModel extends MeterReading {
  const MeterReadingModel({
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
  }) : super(
          consumption: consumption,
          currentReading: currentReading,
          billAmount: billAmount,
          customerName: customerName,
          customerNo: customerNo,
          isSentForBilling: isSentForBilling,
          latitude: latitude,
          longitude: longitude,
          meterNo: meterNo,
          meterStatus: meterStatus,
          readerNo: readerNo,
          readingStatus: readingStatus,
          transactionId: transactionId,
          adjustedLink: adjustedLink,
          image: image,
          isAdjusted: isAdjusted,
          operationalArea: operationalArea,
          period: period,
          previousReading: previousReading,
          route: route,
          station: station,
        );

  @override
  @JsonKey(name: 'previous_reading')
  final String? previousReading;
  @override
  @JsonKey(name: 'current_reading')
  final String currentReading;
  @override
  final String consumption;
  @override
  @JsonKey(name: 'bill_amount')
  final String? billAmount;
  @override
  @JsonKey(name: 'meter_status')
  final String meterStatus;
  @override
  @JsonKey(name: 'reading_status')
  final String readingStatus;
  @override
  final String longitude;
  @override
  final String latitude;
  @override
  @JsonKey(name: 'customer_name')
  final String customerName;
  @override
  @JsonKey(name: 'adjusted')
  final bool? isAdjusted;
  @override
  @JsonKey(name: 'adjusted_link')
  final String? adjustedLink;
  @override
  final String? route;
  @override
  @JsonKey(name: 'operational_area')
  final String? operationalArea;
  @override
  final String? station;
  @override
  final String? period;
  @override
  @JsonKey(name: 'transaction_id')
  final String transactionId;
  @override
  @JsonKey(name: 'sent_for_billing')
  final bool isSentForBilling;
  @override
  final String? image;
  @override
  @JsonKey(name: 'customer_no')
  final String customerNo;
  @override
  @JsonKey(name: 'meter_no')
  final String meterNo;
  @override
  @JsonKey(name: 'reader_no')
  final String readerNo;

  factory MeterReadingModel.fromJson(Map<String, dynamic> json) =>
      _$MeterReadingModelFromJson(json);

  Map<String, dynamic> toJson() => _$MeterReadingModelToJson(this);
}
