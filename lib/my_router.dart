import 'package:go_router/go_router.dart';

import 'main_page.dart';
import 'map_page.dart';
import 'pal_guide_page.dart';
import 'pal_detail_page.dart';
import 'property_page.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return MainPage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'map_page',
          builder: (context, state) {
            return MapPage();
          },
        ),
        GoRoute(
          path: 'pal_guide_page',
          builder: (context, state) {
            return PalGuidePage();
          },
          routes: <RouteBase>[
            GoRoute(
              path: 'pal_detail_page/:pal_index',
              builder: (context, state) {
                String? palIndexString = state.pathParameters['pal_index'];
                final palIndex = int.parse(palIndexString!);
                return PalDetailPage(palIndex: palIndex);
              },
            ),
          ],
        ),
        GoRoute(
          path: 'property_page',
          builder: (context, state) {
            return PropertyPage();
          },
        ),
      ],
    ),
  ],
);
