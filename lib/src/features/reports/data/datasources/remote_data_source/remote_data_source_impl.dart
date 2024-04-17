// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:errors/errors.dart';
import 'package:nedco_meter_reader/src/core/api_client/api_client.dart';
import 'package:nedco_meter_reader/src/core/api_client/api_constants.dart';
import 'package:nedco_meter_reader/src/features/reports/data/datasources/remote_data_source/remote_data_source.dart';
import 'package:nedco_meter_reader/src/features/reports/data/models/failed_reading_model.dart';

class FailedReadingRemoteDataSourceImpl extends FailedReadingRemoteDataSource {
  FailedReadingRemoteDataSourceImpl({
    required ApiClient apiClient,
  }) : _apiClient = apiClient;

  final ApiClient _apiClient;
  @override
  Future<List<FailedReadingModel>> fetchFailedReadings() async {
    try {
      final response =
          await _apiClient.get(endpoint: ApiConstants.failedReadingUrl);
      final responseBody = jsonDecode(response.body) as Map<String, dynamic>;
      final failedReadings = responseBody['results'] as List<dynamic>;

      return failedReadings.map((e) => FailedReadingModel.fromJson(e)).toList();
    } on ServerException {
      rethrow;
    } catch (e) {
      throw ServerException(
        errorMessage: e.toString(),
      );
    }
  }

  @override
  Future<FailedReadingModel> fetchSingleFailedReading(
      String failedReadingId) async {
    try {
      final response = await _apiClient.get(
        endpoint: '${ApiConstants.failedReadingUrl}$failedReadingId',
      );

      final responseBody = jsonDecode(response.body) as Map<String, dynamic>;
      return FailedReadingModel.fromJson(responseBody);
    } on ServerException {
      rethrow;
    } catch (e) {
      throw ServerException(errorMessage: e.toString());
    }
  }
}
