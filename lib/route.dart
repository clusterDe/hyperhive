import 'package:go_router/go_router.dart';
import 'package:marketplace/provider/home/home_provider.dart';
import 'package:marketplace/provider/profile_detail/profile_detail_provider.dart';
import 'package:marketplace/screen/home/home_screen.dart';
import 'package:marketplace/screen/page2/page2_screen.dart';
import 'package:marketplace/screen/page3/page3_screen.dart';
import 'package:marketplace/screen/profile/profile_screen.dart';
import 'package:marketplace/screen/profile_detail/profile_detail_screen.dart';
import 'package:provider/provider.dart';

import 'models/cards/card_people_model.dart';
import 'screen/dashboard/dashboard_screen.dart';

GoRouter route = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: DashboardScreen.routeName,
  restorationScopeId: DashboardScreen.routeName,
  routes: [
    ShellRoute(
      builder: (context, state, child) => DashboardScreen(
        key: state.pageKey,
        child: child,
      ),
      routes: [
        GoRoute(
          path: HomeScreen.routeName,
          name: HomeScreen.routeName,
          builder: (context, state) => ChangeNotifierProvider.value(
            value: HomeProvider(),
            child: const HomeScreen(),
          ),
          routes: [
            GoRoute(
              path: ProfileDetailScreen.routeName,
              name: ProfileDetailScreen.routeName,
              builder: (context, state) {
                var extra = state.extra;

                if (extra is CardPeopleModel) {
                  return ChangeNotifierProvider.value(
                    value: ProfileDetailProvider(peopleData: extra),
                    child: const ProfileDetailScreen(),
                  );
                }
                return ChangeNotifierProvider.value(
                  value: ProfileDetailProvider(),
                  child: const ProfileDetailScreen(),
                );
              },
            ),
          ],
        ),
        GoRoute(
          path: Page2Screen.routeName,
          name: Page2Screen.routeName,
          builder: (context, state) => const Page2Screen(),
        ),
        GoRoute(
          path: Page3Screen.routeName,
          name: Page3Screen.routeName,
          builder: (context, state) => const Page3Screen(),
        ),
        GoRoute(
          path: ProfileScreen.routeName,
          name: ProfileScreen.routeName,
          builder: (context, state) => const ProfileScreen(),
        ),
      ],
    ),
  ],
);
