import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
import 'package:secure_storage_repository/storage_repository.dart';

import '../../features/customer/data/datasources/remote_data_source/customer_remote_data_source.dart';
import '../../features/customer/data/datasources/remote_data_source/customer_remote_data_source.impl.dart';
import '../../features/customer/data/repositories/customer_repository_impl.dart';
import '../../features/customer/domain/repositories/customer_repository.dart';
import '../api_client/api_client.dart';

GetIt locator = GetIt.instance;

Future<void> setUpLocator() async {
  locator.registerLazySingleton<CustomerRepository>(
    () => CustomerRepositoryImpl(
      remoteDataSource: locator(),
    ),
  );

  locator.registerLazySingleton<CustomerRemoteDataSource>(
    () => CustomerRemoteDataSourceImpl(
      apiClient: locator(),
    ),
  );

  locator.registerLazySingleton<ApiClient>(
    () => ApiClient(
      client: locator(),
      secureStorageRepository: locator(),
    ),
  );

  locator.registerLazySingleton<SecureStorageRepository>(
    () => SecureStorageRepository(
      secureStorage: locator(),
    ),
  );
  locator.registerLazySingleton<Client>(Client.new);

  locator.registerLazySingleton<FlutterSecureStorage>(
    () => const FlutterSecureStorage(),
  );
}
