import 'dart:convert';

class PersonDetailModel {
  final int id;
  final String name;
  final String profilePath;
  final double popularity;
  final String biography;
  final String birthday;
  final String? deathday;
  final String placeOfBirth;
  final String imdbId;
  final List<String> alsoKnownAs;
  final int gender;
  final String knownForDepartment;

  PersonDetailModel({
    required this.id,
    required this.name,
    required this.profilePath,
    required this.popularity,
    required this.biography,
    required this.birthday,
    this.deathday,
    required this.placeOfBirth,
    required this.imdbId,
    required this.alsoKnownAs,
    required this.gender,
    required this.knownForDepartment,
  });

  factory PersonDetailModel.fromRawJson(String str) =>
      PersonDetailModel.fromJson(json.decode(str));

  factory PersonDetailModel.fromJson(Map<String, dynamic> json) =>
      PersonDetailModel(
        id: json["id"],
        name: json["name"],
        profilePath: json["profile_path"] ?? '',
        popularity: json["popularity"]?.toDouble() ?? 0.0,
        biography: json["biography"] ?? '',
        birthday: json["birthday"] ?? '',
        deathday: json["deathday"],
        placeOfBirth: json["place_of_birth"] ?? '',
        imdbId: json["imdb_id"] ?? '',
        alsoKnownAs: List<String>.from(json["also_known_as"].map((x) => x)),
        gender: json["gender"] ?? 0,
        knownForDepartment: json["known_for_department"] ?? '',
      );
}

class Movie {
  final bool adult;
  final String backdropPath;
  final List<int> genreIds;
  final int id;
  final String originalLanguage;
  final String originalTitle;
  final String overview;
  final double popularity;
  final String posterPath;
  final String releaseDate;
  final String title;
  final bool video;
  final double voteAverage;
  final int voteCount;
  final String character;
  final String creditId;
  final int order;

  Movie({
    required this.adult,
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
    required this.character,
    required this.creditId,
    required this.order,
  });

  factory Movie.fromJson(Map<String, dynamic> json) => Movie(
        adult: json["adult"] ?? false,
        backdropPath: json["backdrop_path"] ?? '',
        genreIds: List<int>.from(json["genre_ids"].map((x) => x)),
        id: json["id"],
        originalLanguage: json["original_language"] ?? '',
        originalTitle: json["original_title"] ?? '',
        overview: json["overview"] ?? '',
        popularity: json["popularity"]?.toDouble() ?? 0.0,
        posterPath: json["poster_path"] ?? '',
        releaseDate: json["release_date"] ?? '',
        title: json["title"] ?? '',
        video: json["video"] ?? false,
        voteAverage: json["vote_average"]?.toDouble() ?? 0.0,
        voteCount: json["vote_count"] ?? 0,
        character: json["character"] ?? '',
        creditId: json["credit_id"] ?? '',
        order: json["order"] ?? 0,
      );
}
