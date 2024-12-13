import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty/UI/pages/characters/model/character_model.dart';
import 'package:rick_and_morty/core/network/network_manager.dart';

@RoutePage()
final class CharactersView extends StatefulWidget {
  const CharactersView({super.key});

  @override
  State<CharactersView> createState() => _CharactersViewState();
}

class _CharactersViewState extends State<CharactersView> {
  final List<Result> characters = [];

  @override
  void initState() {
    super.initState();
    fetchCharacters();
  }

  Future<void> fetchCharacters() async {
    final response = await NetworkManager().get<Map<String, dynamic>>(
      'https://rickandmortyapi.com/api/character',
    );
    final characterModel = CharacterModel.fromJson(response.data ?? {});
    characters.addAll(characterModel.results);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Karakterler'),
      ),
      body: ListView.builder(
        itemCount: characters.length,
        itemBuilder: (context, index) {
          return Text(characters[index].name ?? '');
        },
      ),
    );
  }
}
