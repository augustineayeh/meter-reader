// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';

class CustomersListError extends StatelessWidget {
  const CustomersListError({
    Key? key,
    required this.errorMessage,
  }) : super(key: key);
  final String? errorMessage;
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          Text('Sorry, an error occurred'),
          // Image.asset('assets/no_data.gif'),
        ],
      ),
    );
  }
}
