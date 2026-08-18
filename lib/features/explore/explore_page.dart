import 'package:flutter/material.dart';
import 'package:travel_itinerary/mock/mock_categories.dart';
import 'package:travel_itinerary/mock/mock_places.dart';
import 'package:travel_itinerary/models/place.dart';
import 'package:travel_itinerary/widgets/place_card.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  final searchCtrl = TextEditingController();
  String searchQuery = '';
  String selectedCategory = '';
  List<Place> displayItems = places;

  void updateDisplayItems() {
    setState(() {
      displayItems = places.where((item) {
        final matchesSearch = item.name.toLowerCase().contains(
          searchQuery.toLowerCase(),
        );

        final matchesCategory =
            selectedCategory.isEmpty || item.category == selectedCategory;

        return matchesSearch && matchesCategory;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Explore')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'Search places in Merida',
                  prefixIcon: Icon(Icons.search),
                ),
                controller: searchCtrl,
                onChanged: (value) {
                  searchQuery = value;
                  updateDisplayItems();
                },
              ),
              SizedBox(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: ChoiceChip(
                        avatar: Icon(categories[index].icon),
                        label: Text(categories[index].name),
                        selected: selectedCategory == categories[index].id,
                        onSelected: (selected) {
                          if (selected) {
                            selectedCategory = categories[index].id;
                          } else {
                            selectedCategory = '';
                          }
                          updateDisplayItems();
                        },
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: displayItems.isEmpty
                    ? Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.search_off, size: 48),
                            SizedBox(height: 12),
                            Text(
                              'No places found',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            SizedBox(height: 4),
                            Text('Try a different search or category.'),
                          ],
                        ),
                      )
                    : GridView.count(
                        crossAxisCount: 2, // Number of columns
                        crossAxisSpacing: 10.0, // Space between columns
                        mainAxisSpacing: 10.0,
                        mainAxisExtent: 240, // Space between rows
                        children: [
                          for (final item in displayItems)
                            PlaceCard(place: item),
                        ],
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
