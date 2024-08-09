import 'package:flutter/material.dart';

class RideListScreen extends StatelessWidget {
  // Sample ride data
  final List<Map<String, String>> rides = [
    {'destination': 'City Center', 'time': '10:00 AM'},
    {'destination': 'Airport', 'time': '12:00 PM'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Available Rides'),
      ),
      body: ListView.builder(
        itemCount: rides.length,
        itemBuilder: (context, index) {
          final ride = rides[index];
          return ListTile(
            title: Text('Destination: ${ride['destination']}'),
            subtitle: Text('Time: ${ride['time']}'),
            trailing: ElevatedButton(
              onPressed: () {
                // Add logic to join ride
              },
              child: Text('Join Ride'),
            ),
          );
        },
      ),
    );
  }
}
