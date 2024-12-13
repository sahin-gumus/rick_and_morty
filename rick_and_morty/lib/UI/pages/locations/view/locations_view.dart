import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty/UI/pages/characters/model/location_model.dart';
import 'package:rick_and_morty/core/network/network_manager.dart';

@RoutePage()
class LocationsView extends StatefulWidget {
  const LocationsView({super.key});

  @override
  State<LocationsView> createState() => _LocationsViewState();
}

class _LocationsViewState extends State<LocationsView> {
  final List<Result> locations = [];

  @override
  void initState() {
    super.initState();
    fetchLocations();
  }

  Future<void> fetchLocations() async {
    try {
      final response = await NetworkManager().get<Map<String, dynamic>>(
        'https://rickandmortyapi.com/api/location',
      );
      if (response.data != null) {
        final locationModel = LocationModel.fromJson(response.data!);
        setState(() {
          locations.addAll(locationModel.results);
        });
      }
    } catch (e) {
      // Hata durumlarını ele al
      debugPrint('Error fetching locations: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Locations'),
      ),
      body: locations.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: locations.length,
              itemBuilder: (context, index) {
                final location = locations[index];
                return ListTile(
                    title: Text(location.name ?? ''),
                    subtitle: Text(location.type ?? ''));
              },
            ),
    );
  }
}
