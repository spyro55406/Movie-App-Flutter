import 'dart:convert';

class ResultPerson {
  int page;
  List<Person> persons;
  int totalPages;
  int totalResults;

  ResultPerson({
    required this.page,
    required this.persons,
    required this.totalPages,
    required this.totalResults,
  });

  factory ResultPerson.fromRawJson(String str) => ResultPerson.fromJson(json.decode(str));

  factory ResultPerson.fromJson(Map<String, dynamic> json) => ResultPerson(
        page: json["page"],
        persons: List<Person>.from(json["results"].map((x) => Person.fromJson(x))),
        totalPages: json["total_pages"],
        totalResults: json["total_results"],
      );
}


class Person {
  bool adult;
  int gender;
  int id;
  String knownForDepartment;
  String name;
  String originalName;
  double popularity;
  String profilePath;
  List<KnownFor> knownFor;

  Person({
    required this.adult,
    required this.gender,
    required this.id,
    required this.knownForDepartment,
    required this.name,
    required this.originalName,
    required this.popularity,
    required this.profilePath,
    required this.knownFor,
  });

  factory Person.fromRawJson(String str) => Person.fromJson(json.decode(str));

  factory Person.fromJson(Map<String, dynamic> json) => Person(
        adult: json["adult"] ?? false,
        gender: json["gender"] ?? 0,
        id: json["id"] ?? 0,
        knownForDepartment: json["known_for_department"] ?? '',
        name: json["name"] ?? '',
        originalName: json["original_name"] ?? '',
        popularity: json["popularity"]?.toDouble() ?? 0.0,
        profilePath: json["profile_path"] ?? '',
        knownFor: List<KnownFor>.from(
          json["known_for"].map((x) => KnownFor.fromJson(x)),
        ),
      );
}

class KnownFor {
  String backdropPath;
  int id;
  String title;
  String originalTitle;
  String overview;
  String posterPath;
  String mediaType;
  bool adult;
  String originalLanguage;
  List<int> genreIds;
  double popularity;
  DateTime? releaseDate;
  bool video;
  double voteAverage;
  int voteCount;

  KnownFor({
    required this.backdropPath,
    required this.id,
    required this.title,
    required this.originalTitle,
    required this.overview,
    required this.posterPath,
    required this.mediaType,
    required this.adult,
    required this.originalLanguage,
    required this.genreIds,
    required this.popularity,
    this.releaseDate,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  factory KnownFor.fromRawJson(String str) => KnownFor.fromJson(json.decode(str));

  factory KnownFor.fromJson(Map<String, dynamic> json) => KnownFor(
        backdropPath: json["backdrop_path"] ?? '',
        id: json["id"] ?? 0,
        title: json["title"] ?? '',
        originalTitle: json["original_title"] ?? '',
        overview: json["overview"] ?? '',
        posterPath: json["poster_path"] ?? '',
        mediaType: json["media_type"] ?? '',
        adult: json["adult"] ?? false,
        originalLanguage: json["original_language"] ?? '',
        genreIds: List<int>.from(json["genre_ids"].map((x) => x)),
        popularity: json["popularity"]?.toDouble() ?? 0.0,
        releaseDate: DateTime.tryParse(json["release_date"] ?? ''),
        video: json["video"] ?? false,
        voteAverage: json["vote_average"]?.toDouble() ?? 0.0,
        voteCount: json["vote_count"] ?? 0,
      );
}
