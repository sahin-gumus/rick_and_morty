// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:rick_and_morty/UI/pages/characters/view/characters_view.dart'
    as _i1;
import 'package:rick_and_morty/UI/pages/episodes/view/episodes_view.dart'
    as _i2;
import 'package:rick_and_morty/UI/pages/home/view/home_view.dart' as _i3;
import 'package:rick_and_morty/UI/pages/locations/view/locations_view.dart'
    as _i4;

/// generated route for
/// [_i1.CharactersView]
class CharactersRoute extends _i5.PageRouteInfo<void> {
  const CharactersRoute({List<_i5.PageRouteInfo>? children})
      : super(
          CharactersRoute.name,
          initialChildren: children,
        );

  static const String name = 'CharactersRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i1.CharactersView();
    },
  );
}

/// generated route for
/// [_i2.EpisodesView]
class EpisodesRoute extends _i5.PageRouteInfo<void> {
  const EpisodesRoute({List<_i5.PageRouteInfo>? children})
      : super(
          EpisodesRoute.name,
          initialChildren: children,
        );

  static const String name = 'EpisodesRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i2.EpisodesView();
    },
  );
}

/// generated route for
/// [_i3.HomeView]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i3.HomeView();
    },
  );
}

/// generated route for
/// [_i4.LocationsView]
class LocationsRoute extends _i5.PageRouteInfo<void> {
  const LocationsRoute({List<_i5.PageRouteInfo>? children})
      : super(
          LocationsRoute.name,
          initialChildren: children,
        );

  static const String name = 'LocationsRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i4.LocationsView();
    },
  );
}
