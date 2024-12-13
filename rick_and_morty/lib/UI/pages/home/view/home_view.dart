import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/routing/router.gr.dart';

@RoutePage()
final class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () => context.router.push(const CharactersRoute()),
            child: const Text('Karakterler'),
          ),
          InkWell(
            onTap: () => context.router.push(const LocationsRoute()),
            child: const Text('Lokasyonlar'),
          ),
          InkWell(
            onTap: () => context.router.push(const EpisodesRoute()),
            child: const Text('Bölümler'),
          ),
        ],
      ),
    );
  }
}
