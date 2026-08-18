import 'package:travel_itinerary/mock/mock_places.dart';

final todayItinerary = [
  {'time': '9:00 AM', 'place': 'Paseo de Montejo', 'activity': 'Morning walk'},
  {
    'time': '11:00 AM',
    'place': 'Museo Regional de Antropología',
    'activity': 'Explore the museum',
  },
  {'time': '1:30 PM', 'place': 'Mercado 60', 'activity': 'Lunch'},
  {
    'time': '4:00 PM',
    'place': 'Parque de Santa Lucía',
    'activity': 'Relax and explore',
  },
  {'time': '7:00 PM', 'place': 'Plaza Grande', 'activity': 'Evening stroll'},
];

final sampleItinerary = {
  DateTime(2026, 8, 19): [
    {'time': '09:00', 'place': places[0], 'duration': '1 hour'},
    {'time': '11:00', 'place': places[1], 'duration': '2 hours'},
    {'time': '14:00', 'place': places[2], 'duration': '1.5 hours'},
  ],
  DateTime(2026, 8, 20): [
    {'time': '10:00', 'place': places[3], 'duration': '1.5 hours'},
  ],
};
