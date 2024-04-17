import 'package:errors/errors.dart';
import 'package:fpdart/src/either.dart';
import '../datasources/remote_data_source/remote_data_source.dart';
import '../../domain/entities/failed_reading.dart';
import '../../domain/repositories/failed_reading_repository.dart';

class FailedReadingRepositoryImpl extends FailedReadingRepository {
  FailedReadingRepositoryImpl(
      {required FailedReadingRemoteDataSource remoteDataSource})
      : _remoteDataSource = remoteDataSource;

  final FailedReadingRemoteDataSource _remoteDataSource;

  @override
  Future<Either<Failure, List<FailedReading>>> fetchFailedReadings() async {
    try {
      final remoteData = await _remoteDataSource.fetchFailedReadings();

      return right(remoteData);
    } on ServerException catch (e) {
      return left(
        ServerFailure(errorMessage: e.errorMessage),
      );
    }
  }

  @override
  Future<Either<Failure, FailedReading>> fetchSingleFailedReading(
      String failedReadingId) async {
    try {
      final remoteData =
          await _remoteDataSource.fetchSingleFailedReading(failedReadingId);
      return right(remoteData);
    } on ServerException catch (e) {
      return left(
        ServerFailure(errorMessage: e.errorMessage),
      );
    } catch (e) {
      return left(
        ServerFailure(
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
