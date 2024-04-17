import 'package:errors/errors.dart';
import 'package:fpdart/fpdart.dart';

import '../entities/failed_reading.dart';

abstract class FailedReadingRepository {
  Future<Either<Failure, List<FailedReading>>> fetchFailedReadings();
  Future<Either<Failure, FailedReading>> fetchSingleFailedReading(String failedReadingId);
}
