import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../domain/entities/customer.dart';
import '../../domain/repositories/customer_repository.dart';

part 'customer_state.dart';

class CustomerCubit extends Cubit<CustomerState> {
  CustomerCubit({
    required CustomerRepository customerRepository,
  })  : _customerRepository = customerRepository,
        super(
          CustomerState(),
        );

  final CustomerRepository _customerRepository;

  void fetchCustomersList() async {
    emit(
      state.copyWith(
        status: CustomerStatus.loading,
      ),
    );

    final failureOrCustomersList = await _customerRepository.fetchCustomers();

    failureOrCustomersList.fold(
      (failure) {
        print(failure.errorMessage);
        emit(
          state.copyWith(
            status: CustomerStatus.failure,
            errorMessage: failure.errorMessage,
          ),
        );
      },
      (customersList) {
        emit(
          state.copyWith(
            status: CustomerStatus.success,
            customersList: customersList,
          ),
        );
      },
    );
  }

  void fetchSingleCustomer(String customerId) async {
    emit(
      state.copyWith(
        status: CustomerStatus.loading,
      ),
    );

    final failureOrCustomer =
        await _customerRepository.fetchSingleCustomer(customerId);

    failureOrCustomer.fold(
      (failure) {
        emit(
          state.copyWith(
            status: CustomerStatus.failure,
            errorMessage: failure.errorMessage,
          ),
        );
      },
      (customer) {
        emit(
          state.copyWith(
            status: CustomerStatus.success,
            customer: customer,
          ),
        );
      },
    );
  }
}
