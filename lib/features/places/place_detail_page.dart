import 'package:flutter/material.dart';
import 'package:travel_itinerary/mock/mock_places.dart';
import 'package:travel_itinerary/models/place.dart';

class PlaceDetailPage extends StatelessWidget {
  final String placeId;
  PlaceDetailPage({super.key, required this.placeId});

  @override
  Widget build(BuildContext context) {
    final Place place = places.firstWhere((p) => p.id == placeId);
    return Scaffold(
      appBar: AppBar(title: Text(place.name)),
      body: SingleChildScrollView(
        // padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset('assets/images/paseodemontejo.jpg', fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.location_on_outlined),
                      const SizedBox(width: 8),
                      Expanded(child: Text(place.address)),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.star_outline),
                      const SizedBox(width: 8),
                      Text('${place.rating}'),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.access_time),
                      const SizedBox(width: 8),
                      Text(place.openingHours),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text('About', style: Theme.of(context).textTheme.titleLarge),
                  const SizedBox(height: 8),
                  Text(place.description),
                  SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: FilledButton.icon(
                      onPressed: () {},
                      label: Text('Add to itinerary'),
                      icon: const Icon(Icons.add),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
