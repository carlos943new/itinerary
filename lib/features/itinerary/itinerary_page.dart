import 'package:flutter/material.dart';
import 'package:travel_itinerary/mock/mock_itinerary.dart';
import 'package:travel_itinerary/models/place.dart';

class ItineraryPage extends StatefulWidget {
  const ItineraryPage({super.key});

  @override
  State<ItineraryPage> createState() => _ItineraryPageState();
}

class _ItineraryPageState extends State<ItineraryPage> {
  final itinerary = sampleItinerary;
  // Get the dates from the itinerary
  late List<DateTime> days;

  // The currently selected date
  late DateTime selectedDay;

  @override
  void initState() {
    super.initState();

    days = itinerary.keys.toList();
    selectedDay = days.first;
  }

  @override
  Widget build(BuildContext context) {
    final items = itinerary[selectedDay] ?? [];
    return Scaffold(
      appBar: AppBar(title: Text('Itinerary')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: days.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: ChoiceChip(
                      label: Text('${days[index].day}/${days[index].month}'),
                      selected: selectedDay == days[index],
                      onSelected: (selected) {
                        setState(() {
                          selectedDay = days[index];
                        });
                      },
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  final place = item['place'] as Place;

                  return ListTile(
                    title: Text(place.name),
                    subtitle: Text('${item['time']} · ${item['duration']}'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
