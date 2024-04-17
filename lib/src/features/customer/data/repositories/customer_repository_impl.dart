import 'package:errors/errors.dart';
import 'package:fpdart/src/either.dart';

import '../../domain/entities/customer.dart';
import '../../domain/repositories/customer_repository.dart';
import '../datasources/remote_data_source/customer_remote_data_source.dart';

class CustomerRepositoryImpl extends CustomerRepository {
  CustomerRepositoryImpl({required CustomerRemoteDataSource remoteDataSource})
      : _remoteDataSource = remoteDataSource;

  final CustomerRemoteDataSource _remoteDataSource;

  @override
  Future<Either<Failure, List<Customer>>> fetchCustomers() async {
    try {
      final remoteData = await _remoteDataSource.fetchCustomers();
      print(remoteData);
      return right(remoteData);
    } on ServerException catch (e) {
      return left(
        ServerFailure(errorMessage: e.errorMessage),
      );
    }
  }

  @override
  Future<Either<Failure, Customer>> fetchSingleCustomer(
      String customerId) async {
    try {
      final remoteData =
          await _remoteDataSource.fetchSingleCustomer(customerId);
      return right(remoteData);
    } on ServerException catch (e) {
      return left(ServerFailure(errorMessage: e.errorMessage));
    } catch (e) {
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
