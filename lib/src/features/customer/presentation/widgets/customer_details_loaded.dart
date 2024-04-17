import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../core/dummy/dashboard/presentation/pages/dashboard.dart';
import '../../domain/entities/customer.dart';

class CustomerDetailsLoaded extends StatefulWidget {
  const CustomerDetailsLoaded({
    Key? key,
    required this.customer,
    required this.constraints,
  }) : super(key: key);

  final Customer customer;
  final BoxConstraints constraints;

  @override
  State<CustomerDetailsLoaded> createState() => _CustomerDetailsPageState();
}

class _CustomerDetailsPageState extends State<CustomerDetailsLoaded> {
  late GoogleMapController mapController;
  late LatLng location;

  @override
  void initState() {
    super.initState();

    // location = LatLng(
    //   widget.customer.gpsLatitude,
    //   widget.customer.gpsLongitude,
    // );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    widget.customer.name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(widget.customer.no),
                  leading: const Icon(
                    Icons.person,
                    size: 48,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Email'),
                    Text(widget.customer.email ?? '')
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Phone'),
                    Text(widget.customer.phoneNo ?? ''),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Address'),
                    Text(widget.customer.address ?? ''),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Digital Address'),
                    Text(widget.customer.digitalAddress ?? ''),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Current balance'),
              Text('${widget.customer.currentBalance}'),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Current consumption'),
              Text(widget.customer.currentConsumption ?? 'N/A'),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Average consumption'),
              Text('${widget.customer.averageConsumption}'),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Consumption time'),
              Text(widget.customer.consumptionTime ?? 'N/A'),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Consumption date'),
              Text(widget.customer.consumptionDate ?? 'N/A'),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Current reading'),
              Text(widget.customer.currentReading ?? 'N/A'),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Reading date'),
              Text('${widget.customer.readingDate}'),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Reading time'),
              Text('${widget.customer.readingTime}'),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Reading status'),
              Text(widget.customer.readingStatus ?? ''),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Customer status'),
              Text(widget.customer.customerStatus ?? ''),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Previous reading'),
              Text(widget.customer.previousReading ?? 'N/A'),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Census taken'),
              Text(widget.customer.censusTaken.toString()),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Verified'),
              Text(
                widget.customer.verified.toString(),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),

          const Gap(16),
          BlueButton(
            text: 'View on map',
            navigateTo: Container(),
          ),
          const Gap(4),
          // const WhiteButton(
          //   text: 'Make a report',
          // )

          // SizedBox(
          //   height: 350,
          //   child: ClipRRect(
          //     borderRadius: BorderRadius.circular(30),
          //     child: GoogleMap(
          //       compassEnabled: true,
          //       myLocationEnabled: true,
          //       circles: {
          //         Circle(
          //           circleId: const CircleId('uniqueCircleID'),
          //           center: location,
          //           radius: 200,
          //           fillColor: Colors.blue.shade100,
          //           strokeWidth: 0,
          //         ),
          //       },
          //       onMapCreated: (GoogleMapController controller) {
          //         mapController = controller;
          //       },
          //       initialCameraPosition: CameraPosition(
          //         target: location,
          //         zoom: 15.0,
          //       ),
          //       markers: <Marker>{
          //         Marker(
          //           markerId: const MarkerId('listingLocation'),
          //           position: location,
          //           infoWindow: const InfoWindow(
          //             title: 'Here',
          //           ),
          //         ),
          //       },
          //     ),
          //   ),
          // ),
        ],
      ),
    ));
  }
}
