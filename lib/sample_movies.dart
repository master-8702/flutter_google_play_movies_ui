import 'package:flutter_google_play_movies_ui/domain/movie.dart';

// This file will hold sample movies that we will use as a source
const String desc =
    "Dwayne Johnson and Jason Statham return to their unforgettable roles as Hobbs and Shaw i"
    "n this action-packed feature from the blockbuster Fast & Furious franchise! For "
    "years, hulking lawman Luke Hobbs (Johnson) and lawless outcast Deckard Shaw (Statham) "
    "have traded smack talk and body blows. But when cyber-genetically enhanced anarchist "
    "Brixton (Idris Elba) gains control of an insidious bio-threat that could alter humanity "
    "forever, Hobbs and Shaw must partner up to bring down the only guy who might be badder "
    "than themselves!";

final movies = [
  Movie(
      title: 'Fast & Furious Presents: \nHobbs and Shaw',
      category: 'family',
      genre: ['Action', 'Adventure'],
      duration: 136,
      description: desc,
      posterUrl: 'assets/images/hobbs and shaw.jpg',
      trailerUrl: 'assets/images/hobbs and shaw2.jpg',
      rottenTomatoRating: 71,
      releaseDate: 'March 2019',
      rating: 4.1,
      sellPrice: 14.99,
      rentPrice: 3.99,
      rated: 'PG-13',
      numberOfReviews: '1.72K'),
  Movie(
      title: 'Deadpool 2',
      category: 'family',
      genre: ['Action', 'Adventure'],
      duration: 136,
      description: desc,
      posterUrl: 'assets/images/deadpool 2.jpg',
      rottenTomatoRating: 71,
      releaseDate: 'March 2019',
      rating: 4.1,
      sellPrice: 14.99,
      rentPrice: 3.99,
      rated: 'R',
      numberOfReviews: '1.72K'),
  Movie(
      title: 'Fast & Furious 6 - Extended Edition',
      category: 'family',
      genre: ['Action', 'Adventure'],
      duration: 136,
      description: desc,
      posterUrl: 'assets/images/fast and furious.jpg',
      rottenTomatoRating: 71,
      releaseDate: 'March 2019',
      rating: 4.6,
      sellPrice: 14.99,
      rentPrice: 3.99,
      rated: 'PG-13',
      numberOfReviews: '1.72K'),
  Movie(
      title: 'Atomic Blonde',
      category: 'family',
      genre: ['Action', 'Adventure'],
      duration: 136,
      description: desc,
      posterUrl: 'assets/images/atomic blonde.jpg',
      rottenTomatoRating: 71,
      releaseDate: 'March 2019',
      rating: 4.0,
      sellPrice: 14.99,
      rentPrice: 3.99,
      rated: 'R',
      numberOfReviews: '1.72K'),
  Movie(
      title: 'The Fate of the Furious',
      category: 'family',
      genre: ['Action', 'Adventure'],
      duration: 136,
      description: desc,
      posterUrl: 'assets/images/the fate of the furious.jpg',
      rottenTomatoRating: 71,
      releaseDate: 'March 2019',
      rating: 4.5,
      sellPrice: 14.99,
      rentPrice: 3.99,
      rated: 'R',
      numberOfReviews: '1.72K'),
];
