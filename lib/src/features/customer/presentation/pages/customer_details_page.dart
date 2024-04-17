// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nedco_meter_reader/src/core/service_locator/service_locator.dart';
import 'package:nedco_meter_reader/src/features/customer/domain/repositories/customer_repository.dart';
import 'package:nedco_meter_reader/src/features/customer/presentation/cubit/customer_cubit.dart';
import 'package:nedco_meter_reader/src/features/customer/presentation/widgets/customer_details_loaded.dart';
import 'package:nedco_meter_reader/src/features/customer/presentation/widgets/customers_list_error.dart';

class CustomerDetailsPage extends StatelessWidget {
  const CustomerDetailsPage({
    Key? key,
    required this.customerId,
  }) : super(key: key);
  final String customerId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CustomerCubit(
        customerRepository: locator<CustomerRepository>(),
      ),
      child: CustomerDetailsView(
        customerId: customerId,
      ),
    );
  }
}

class CustomerDetailsView extends StatefulWidget {
  const CustomerDetailsView({
    Key? key,
    required this.customerId,
  }) : super(key: key);
  final String customerId;
  @override
  State<CustomerDetailsView> createState() => _CustomerDetailsViewState();
}

class _CustomerDetailsViewState extends State<CustomerDetailsView> {
  @override
  void initState() {
    super.initState();
    context.read<CustomerCubit>().fetchSingleCustomer(widget.customerId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade900,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return BlocBuilder<CustomerCubit, CustomerState>(
            builder: (context, state) {
              if (state.status.isLoading) {
                return Center(
                  child: Image.asset('assets/loading.gif'),
                );
              } else if (state.status.isFailure) {
                return Center(
                  child: CustomersListError(
                    errorMessage: state.errorMessage,
                  ),
                );
              }
              return CustomerDetailsLoaded(
                customer: state.customer,
                constraints: constraints,
              );
            },
            
          );
        },
      ),
       
    
    );
  }
}
