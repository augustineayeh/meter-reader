// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:errors/errors.dart';
import 'package:nedco_meter_reader/src/core/api_client/api_client.dart';
import 'package:nedco_meter_reader/src/core/api_client/api_constants.dart';
import 'package:nedco_meter_reader/src/features/customer/data/datasources/remote_data_source/customer_remote_data_source.dart';
import 'package:nedco_meter_reader/src/features/customer/data/models/customer_model.dart';

class CustomerRemoteDataSourceImpl extends CustomerRemoteDataSource {
  CustomerRemoteDataSourceImpl({
    required ApiClient apiClient,
  }) : _apiClient = apiClient;

  final ApiClient _apiClient;
  @override
  Future<List<CustomerModel>> fetchCustomers() async {
    try {
      final response = await _apiClient.get(endpoint: ApiConstants.customers);
      final responseBody = jsonDecode(response.body) as Map<String, dynamic>;
      final customers = responseBody['results'] as List<dynamic>;

      return customers.map((e) => CustomerModel.fromJson(e)).toList();
    } on ServerException {
      rethrow;
    } catch (e) {
      print(e);
      throw ServerException(
        errorMessage: e.toString(),
      );
    }
  }

  @override
  Future<CustomerModel> fetchSingleCustomer(String customerId) async {
    try {
      final response = await _apiClient.get(
        endpoint: '${ApiConstants.customers}$customerId',
      );

      final responseBody = jsonDecode(response.body) as Map<String, dynamic>;
      return CustomerModel.fromJson(responseBody);
    } on ServerException {
      rethrow;
    } catch (e) {
      print(e);
      throw ServerException(errorMessage: e.toString());
    }
  }
}
