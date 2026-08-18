import 'package:flutter/material.dart';
import 'package:travel_itinerary/mock/mock_categories.dart';
import 'package:travel_itinerary/mock/mock_itinerary.dart';
import 'package:travel_itinerary/mock/mock_places.dart';
import 'package:travel_itinerary/widgets/home_itinerary_item.dart';
import 'package:travel_itinerary/widgets/place_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Discover Mérida')),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Find your next place to visit',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              SizedBox(height: 20),
              Text(
                'Categories',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Chip(
                        avatar: Icon(categories[index].icon),
                        label: Text(categories[index].name),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              Text('Featured', style: Theme.of(context).textTheme.titleMedium),
              Card(
                clipBehavior: Clip.antiAlias,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 180,
                      child: Image.asset(
                        'assets/images/paseodemontejo.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Paseo de Montejo',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          Text(
                            '⭐ 4.9 ',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Popular places',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(
                height: 210,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: places.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: 280,
                      child: PlaceCard(place: places[index]),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Today's itinerary",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                  child: Column(
                    children: [
                      for (final item in todayItinerary)
                        HomeItineraryItem(item: item),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
