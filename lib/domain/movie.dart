// ignore_for_file: public_member_api_docs, sort_constructors_first
class Movie {
  Movie({
    required this.title,
    required this.category,
    required this.genre,
    required this.duration,
    required this.description,
    this.trailerUrl,
    this.posterUrl,
    required this.rottenTomatoRating,
    required this.releaseDate,
    required this.rating,
    this.rated,
    this.numberOfReviews,
    this.rentPrice,
    required this.sellPrice,
  });

  String title;
  String category;
  List<String> genre;
  int duration;
  String description;
  String? trailerUrl;
  String? posterUrl;
  int rottenTomatoRating;
  String releaseDate;
  double rating;
  String? rated;
  String? numberOfReviews;
  double? rentPrice;
  double sellPrice;
}
