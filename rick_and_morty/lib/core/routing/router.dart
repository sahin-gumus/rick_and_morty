import 'package:auto_route/auto_route.dart';
import 'package:rick_and_morty/core/routing/router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'View,Route',
)
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: CharactersRoute.page,
        ),
        AutoRoute(
          page: LocationsRoute.page,
        ),
        AutoRoute(
          page: EpisodesRoute.page,
        ),
      ];
}
