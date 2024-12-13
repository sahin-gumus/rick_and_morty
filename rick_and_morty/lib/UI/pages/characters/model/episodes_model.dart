class EpisodesModel {
  EpisodesModel({
    required this.info,
    required this.results,
  });

  final Info? info;
  final List<Result> results;

  factory EpisodesModel.fromJson(Map<String, dynamic> json) {
    return EpisodesModel(
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
}

class Info {
  Info({
    required this.count,
    required this.pages,
    required this.next,
    required this.prev,
  });

  final int? count;
  final int? pages;
  final String? next;
  final dynamic prev;

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
}

class Result {
  Result({
    required this.id,
    required this.name,
    required this.airDate,
    required this.episode,
    required this.characters,
    required this.url,
    required this.created,
  });

  final int? id;
  final String? name;
  final String? airDate;
  final String? episode;
  final List<String> characters;
  final String? url;
  final DateTime? created;

  factory Result.fromJson(Map<String, dynamic> json) {
    return Result(
      id: json["id"],
      name: json["name"],
      airDate: json["air_date"],
      episode: json["episode"],
      characters: json["characters"] == null
          ? []
          : List<String>.from(json["characters"]!.map((x) => x)),
      url: json["url"],
      created: DateTime.tryParse(json["created"] ?? ""),
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "air_date": airDate,
        "episode": episode,
        "characters": characters.map((x) => x).toList(),
        "url": url,
        "created": created?.toIso8601String(),
      };
}
