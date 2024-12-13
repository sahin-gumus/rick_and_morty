import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/network/network_manager.dart';

// Episode ve EpisodeModel sınıfları tanımlandı.
class EpisodeModel {
  final List<Episode> results;

  EpisodeModel({required this.results});

  factory EpisodeModel.fromJson(Map<String, dynamic> json) {
    // JSON verisini `EpisodeModel` nesnesine dönüştürür
    return EpisodeModel(
      results: (json['results'] as List<dynamic>)
          .map((e) => Episode.fromJson(e))
          .toList(),
    );
  }
}

class Episode {
  final String? name;
  final String? airDate;
  final String? episode;

  Episode({this.name, this.airDate, this.episode});

  factory Episode.fromJson(Map<String, dynamic> json) {
    // JSON verisini `Episode` nesnesine dönüştürür
    return Episode(
      name: json['name'] as String?,
      airDate: json['air_date'] as String?,
      episode: json['episode'] as String?,
    );
  }
}

@RoutePage()
final class EpisodesView extends StatefulWidget {
  const EpisodesView({super.key});

  @override
  State<EpisodesView> createState() => _EpisodesViewState();
}

class _EpisodesViewState extends State<EpisodesView> {
  final List<Episode> episodes = []; // Bölümleri tutacak bir liste

  @override
  void initState() {
    super.initState();
    fetchEpisodes(); // Widget oluşturulurken API çağrısı başlatılır
  }

  Future<void> fetchEpisodes() async {
    try {
      final response = await NetworkManager().get<Map<String, dynamic>>(
        'https://rickandmortyapi.com/api/episode', // Bölüm verilerini almak için API endpoint
      );
      if (response.data != null) {
        final episodeModel = EpisodeModel.fromJson(
            response.data!); // JSON verisini modele dönüştürür
        setState(() {
          episodes
              .addAll(episodeModel.results); // Veriyi episodes listesine ekler
        });
      }
    } catch (e) {
      debugPrint(
          'Error fetching episodes: $e'); // Hata durumunda konsola yazdırılır
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bölümler'),
      ),
      body: ListView.builder(
        itemCount: episodes.length, // Liste elemanlarının sayısı
        itemBuilder: (context, index) {
          final episode = episodes[index];
          return ListTile(
            title: Text(episode.name ?? 'Bilinmeyen Bölüm'), // Bölüm adı
            subtitle:
                Text(episode.airDate ?? 'Bilinmeyen Tarih'), // Yayın tarihi
            trailing: Text(episode.episode ?? ''), // Bölüm numarası
          );
        },
      ),
    );
  }
}
