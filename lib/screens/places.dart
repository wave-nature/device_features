import 'package:device_features/screens/add_place.dart';
import 'package:flutter/material.dart';

final places = [
  {"id": "1", "title": "Gwalior"},
  {"id": "1", "title": "Indore"}
];

class PlacesScreen extends StatelessWidget {
  const PlacesScreen({super.key});

  navigateToAddPlace(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (ctx) => const AddPlaceScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Places"),
        actions: [
          IconButton(
              onPressed: () {
                navigateToAddPlace(context);
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: Container(
        color: Theme.of(context).colorScheme.onSecondary,
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            final place = places[index];
            return Text(
              "hi",
              style: Theme.of(context).textTheme.titleMedium!,
            );
          },
          itemCount: places.length,
        ),
      ),
    );
  }
}
