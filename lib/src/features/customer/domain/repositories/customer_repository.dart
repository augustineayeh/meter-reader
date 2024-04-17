import 'package:errors/errors.dart';
import 'package:fpdart/fpdart.dart';

import '../entities/customer.dart';

abstract class CustomerRepository {
  Future<Either<Failure, List<Customer>>> fetchCustomers();
  Future<Either<Failure, Customer>> fetchSingleCustomer(String customerId);
}
