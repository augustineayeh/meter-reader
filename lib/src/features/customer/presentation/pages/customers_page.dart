// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nedco_meter_reader/src/core/service_locator/service_locator.dart';
import 'package:nedco_meter_reader/src/features/customer/domain/repositories/customer_repository.dart';
import 'package:nedco_meter_reader/src/features/customer/presentation/cubit/customer_cubit.dart';
import 'package:nedco_meter_reader/src/features/customer/presentation/widgets/customers_list_error.dart';
import 'package:nedco_meter_reader/src/features/customer/presentation/widgets/customers_list_loaded.dart';

class CustomersPage extends StatelessWidget {
  const CustomersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CustomerCubit(
        customerRepository: locator<CustomerRepository>(),
      ),
      child: const CustomersListView(),
    );
  }
}

class CustomersListView extends StatefulWidget {
  const CustomersListView({super.key});

  @override
  State<CustomersListView> createState() => _CustomersListViewState();
}

class _CustomersListViewState extends State<CustomersListView> {
  @override
  void initState() {
    super.initState();
    context.read<CustomerCubit>().fetchCustomersList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('View Customers'),
        backgroundColor: Colors.blue.shade100,
      ),
      body: SafeArea(
        bottom: false,
        child: Center(
          child: BlocBuilder<CustomerCubit, CustomerState>(
            builder: (context, state) {
              if (state.status.isSuccess) {
                return CustomersListLoaded(
                  customersList: state.customersList,
                );
              } else if (state.status.isFailure) {
                return CustomersListError(
                  errorMessage: state.errorMessage,
                );
              }
              return Image.asset(
                'assets/loading.gif',
              );
            },
          ),
        ),
      ),
    );
  }
}
