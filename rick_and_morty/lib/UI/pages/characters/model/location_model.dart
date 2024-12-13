class LocationModel {
  LocationModel({
    required this.info,
    required this.results,
  });

  final Info? info;
  final List<Result> results;

  factory LocationModel.fromJson(Map<String, dynamic> json) {
    return LocationModel(
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
    required this.type,
    required this.dimension,
    required this.residents,
    required this.url,
    required this.created,
  });

  final int? id;
  final String? name;
  final String? type;
  final String? dimension;
  final List<String> residents;
  final String? url;
  final DateTime? created;

  factory Result.fromJson(Map<String, dynamic> json) {
    return Result(
      id: json["id"],
      name: json["name"],
      type: json["type"],
      dimension: json["dimension"],
      residents: json["residents"] == null
          ? []
          : List<String>.from(json["residents"]!.map((x) => x)),
      url: json["url"],
      created: DateTime.tryParse(json["created"] ?? ""),
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "type": type,
        "dimension": dimension,
        "residents": residents.map((x) => x).toList(),
        "url": url,
        "created": created?.toIso8601String(),
      };
}
