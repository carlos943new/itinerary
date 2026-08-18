import 'package:go_router/go_router.dart';
import 'package:travel_itinerary/app/main_scaffold.dart';
import 'package:travel_itinerary/features/explore/explore_page.dart';
import 'package:travel_itinerary/features/home/home_page.dart';
import 'package:travel_itinerary/features/itinerary/itinerary_page.dart';
import 'package:travel_itinerary/features/places/place_detail_page.dart';

final router = GoRouter(
  initialLocation: '/home',
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return MainScaffold(child: child);
      },
      routes: [
        GoRoute(path: '/home', builder: (context, state) => const HomePage()),
        GoRoute(
          path: '/explore',
          builder: (context, state) => const ExplorePage(),
        ),
        GoRoute(
          path: '/itinerary',
          builder: (context, state) => const ItineraryPage(),
        ),
        /*  GoRoute(
          path: '/profile',
          builder: (context, state) => const ProfilePage(),
        ), */
      ],
    ),

    GoRoute(
      path: '/places/:id',
      builder: (context, state) {
        final id = state.pathParameters['id']!;
        return PlaceDetailPage(placeId: id);
      },
    ),
  ],
);
