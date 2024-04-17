import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../domain/entities/failed_reading.dart';
import '../../domain/repositories/failed_reading_repository.dart';

part 'failed_reading_state.dart';

class FailedReadingCubit extends Cubit<FailedReadingState> {
  FailedReadingCubit({
    required FailedReadingRepository failedReadingRepository,
  })  : _failedReadingRepository = failedReadingRepository,
        super(
          const FailedReadingState(),
        );

  final FailedReadingRepository _failedReadingRepository;

  void fetchFailedReadings() async {
    emit(
      state.copyWith(
        status: FailedReadingStatus.loading,
      ),
    );

    final failureOrFailedReadings =
        await _failedReadingRepository.fetchFailedReadings();

    failureOrFailedReadings.fold(
      (failure) {
        print(failure.errorMessage);
        emit(
          state.copyWith(
            status: FailedReadingStatus.failure,
            errorMessage: failure.errorMessage,
          ),
        );
      },
      (failedReadings) {
        emit(
          state.copyWith(
            status: FailedReadingStatus.success,
            failedReadingsList: failedReadings,
          ),
        );
      },
    );
  }

  void fetchFailedReading(String failedReadingId) async {
    emit(
      state.copyWith(
        status: FailedReadingStatus.loading,
      ),
    );

    final failureOrFailedReading = await _failedReadingRepository
        .fetchSingleFailedReading(failedReadingId);

    failureOrFailedReading.fold(
      (failure) {
        emit(
          state.copyWith(
            status: FailedReadingStatus.failure,
            errorMessage: failure.errorMessage,
          ),
        );
      },
      (failedReading) {
        emit(
          state.copyWith(
            status: FailedReadingStatus.success,
            failedReading: failedReading,
          ),
        );
      },
    );
  }
}
