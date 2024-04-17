// ignore_for_file: public_member_api_docs, sort_constructors_first

part of 'failed_reading_cubit.dart';

enum FailedReadingStatus { initial, loading, success, failure }

extension FailedReadingStatusX on FailedReadingStatus {
  bool get isInitial => this == FailedReadingStatus.initial;
  bool get isLoading => this == FailedReadingStatus.loading;
  bool get isSuccess => this == FailedReadingStatus.success;
  bool get isFailure => this == FailedReadingStatus.failure;
}

class FailedReadingState extends Equatable {
  const FailedReadingState({
    this.failedReadingsList = const <FailedReading>[],
    this.status = FailedReadingStatus.initial,
    this.errorMessage,
    this.failedReading = FailedReading.empty,
  });

  final List<FailedReading> failedReadingsList;
  final FailedReadingStatus status;
  final String? errorMessage;
  final FailedReading failedReading;

  FailedReadingState copyWith({
    List<FailedReading>? failedReadingsList,
    FailedReadingStatus? status,
    String? errorMessage,
    FailedReading? failedReading,
  }) {
    return FailedReadingState(
      failedReadingsList: failedReadingsList ?? this.failedReadingsList,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      failedReading: failedReading ?? this.failedReading,
    );
  }

  @override
  List<Object?> get props => [
        failedReading,
        failedReadingsList,
        status,
        errorMessage,
      ];
}
