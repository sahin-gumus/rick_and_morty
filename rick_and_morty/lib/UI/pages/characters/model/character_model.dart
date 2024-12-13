class CharacterModel {
  CharacterModel({
    required this.info,
    required this.results,
  });

  final Info? info;
  static const String infoKey = "info";

  final List<Result> results;
  static const String resultsKey = "results";

  CharacterModel copyWith({
    Info? info,
    List<Result>? results,
  }) {
    return CharacterModel(
      info: info ?? this.info,
      results: results ?? this.results,
    );
  }

  factory CharacterModel.fromJson(Map<String, dynamic> json) {
    return CharacterModel(
      info: json["info"] == null ? null : Info.fromJson(json["info"]),
      results: json["results"] == null
          ? []
          : List<Result>.from(json["results"]!.map((x) => Result.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
        "info": info?.toJson(),
        "results": results.map((x) => x.toJson()).toList(),
      };

  @override
  String toString() {
    return "$info, $results, ";
  }
}

class Info {
  Info({
    required this.count,
    required this.pages,
    required this.next,
    required this.prev,
  });

  final int? count;
  static const String countKey = "count";

  final int? pages;
  static const String pagesKey = "pages";

  final String? next;
  static const String nextKey = "next";

  final String? prev;
  static const String prevKey = "prev";

  Info copyWith({
    int? count,
    int? pages,
    String? next,
    String? prev,
  }) {
    return Info(
      count: count ?? this.count,
      pages: pages ?? this.pages,
      next: next ?? this.next,
      prev: prev ?? this.prev,
    );
  }

  factory Info.fromJson(Map<String, dynamic> json) {
    return Info(
      count: json["count"],
      pages: json["pages"],
      next: json["next"],
      prev: json["prev"],
    );
  }

  Map<String, dynamic> toJson() => {
        "count": count,
        "pages": pages,
        "next": next,
        "prev": prev,
      };

  @override
  String toString() {
    return "$count, $pages, $next, $prev, ";
  }
}

class Result {
  Result({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.type,
    required this.gender,
    required this.origin,
    required this.location,
    required this.image,
    required this.episode,
    required this.url,
    required this.created,
  });

  final int? id;
  static const String idKey = "id";

  final String? name;
  static const String nameKey = "name";

  final String? status;
  static const String statusKey = "status";

  final String? species;
  static const String speciesKey = "species";

  final String? type;
  static const String typeKey = "type";

  final String? gender;
  static const String genderKey = "gender";

  final Location? origin;
  static const String originKey = "origin";

  final Location? location;
  static const String locationKey = "location";

  final String? image;
  static const String imageKey = "image";

  final List<String> episode;
  static const String episodeKey = "episode";

  final String? url;
  static const String urlKey = "url";

  final DateTime? created;
  static const String createdKey = "created";

  Result copyWith({
    int? id,
    String? name,
    String? status,
    String? species,
    String? type,
    String? gender,
    Location? origin,
    Location? location,
    String? image,
    List<String>? episode,
    String? url,
    DateTime? created,
  }) {
    return Result(
      id: id ?? this.id,
      name: name ?? this.name,
      status: status ?? this.status,
      species: species ?? this.species,
      type: type ?? this.type,
      gender: gender ?? this.gender,
      origin: origin ?? this.origin,
      location: location ?? this.location,
      image: image ?? this.image,
      episode: episode ?? this.episode,
      url: url ?? this.url,
      created: created ?? this.created,
    );
  }

  factory Result.fromJson(Map<String, dynamic> json) {
    return Result(
      id: json["id"],
      name: json["name"],
      status: json["status"],
      species: json["species"],
      type: json["type"],
      gender: json["gender"],
      origin: json["origin"] == null ? null : Location.fromJson(json["origin"]),
      location:
          json["location"] == null ? null : Location.fromJson(json["location"]),
      image: json["image"],
      episode: json["episode"] == null
          ? []
          : List<String>.from(json["episode"]!.map((x) => x)),
      url: json["url"],
      created: DateTime.tryParse(json["created"] ?? ""),
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "status": status,
        "species": species,
        "type": type,
        "gender": gender,
        "origin": origin?.toJson(),
        "location": location?.toJson(),
        "image": image,
        "episode": episode.map((x) => x).toList(),
        "url": url,
        "created": created?.toIso8601String(),
      };

  @override
  String toString() {
    return "$id, $name, $status, $species, $type, $gender, $origin, $location, $image, $episode, $url, $created, ";
  }
}

class Location {
  Location({
    required this.name,
    required this.url,
  });

  final String? name;
  static const String nameKey = "name";

  final String? url;
  static const String urlKey = "url";

  Location copyWith({
    String? name,
    String? url,
  }) {
    return Location(
      name: name ?? this.name,
      url: url ?? this.url,
    );
  }

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      name: json["name"],
      url: json["url"],
    );
  }

  Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
      };

  @override
  String toString() {
    return "$name, $url, ";
  }
}
