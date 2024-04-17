import 'package:flutter/material.dart';

import '../../domain/entities/customer.dart';
import '../pages/customer_details_page.dart';

class CustomersListLoaded extends StatelessWidget {
  const CustomersListLoaded({
    Key? key,
    required this.customersList,
  }) : super(key: key);

  final List<Customer> customersList;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: ListView.builder(
        itemCount: customersList.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final customer = customersList[index];
          return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          CustomerDetailsPage(customerId: customer.id),
                    ));
              },
              child: Card(
                child: ListTile(
                  contentPadding: const EdgeInsets.all(8),
                  title: Text(
                    customer.name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(customer.no),
                  leading: const Icon(
                    Icons.person,
                    size: 48,
                  ),
                  trailing: const Icon(Icons.navigate_next),
                ),
              ));
        },
      ),
    );
  }
}
