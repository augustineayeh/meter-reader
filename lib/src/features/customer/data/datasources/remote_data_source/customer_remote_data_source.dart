import '../../models/customer_model.dart';

abstract class CustomerRemoteDataSource {
  Future<List<CustomerModel>> fetchCustomers();
  Future<CustomerModel> fetchSingleCustomer(String customerId);
}
