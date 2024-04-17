import '../../models/failed_reading_model.dart';

abstract class FailedReadingRemoteDataSource {
  Future<List<FailedReadingModel>> fetchFailedReadings();
  Future<FailedReadingModel> fetchSingleFailedReading(String failedReadingId);
}
