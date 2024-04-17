part of 'customer_cubit.dart';

enum CustomerStatus { initial, loading, success, failure }

extension CustomerStatusX on CustomerStatus {
  bool get isInitial => this == CustomerStatus.initial;
  bool get isLoading => this == CustomerStatus.loading;
  bool get isSuccess => this == CustomerStatus.success;
  bool get isFailure => this == CustomerStatus.failure;
}

class CustomerState extends Equatable {
  CustomerState({
    Customer? customer,
    List<Customer>? customersList,
    this.status = CustomerStatus.initial,
    this.errorMessage,
  })  : customer = customer ?? Customer.empty,
        customersList = customersList ?? <Customer>[];

  final Customer customer;
  final List<Customer> customersList;
  final CustomerStatus status;
  final String? errorMessage;

  CustomerState copyWith({
    Customer? customer,
    CustomerStatus? status,
    String? errorMessage,
    List<Customer>? customersList,
  }) {
    return CustomerState(
      customer: customer ?? this.customer,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      customersList: customersList ?? this.customersList,
    );
  }

  @override
  List<Object?> get props => [customer, status, customersList, errorMessage];
}
