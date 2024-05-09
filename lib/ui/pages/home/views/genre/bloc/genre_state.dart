part of 'genre_bloc.dart';

abstract class GenreState {
  final List<Genre> listGenreMovie;
  final List<Genre> listGenreTv;
  final List<String> listMovieImage;
  final List<String> listTvImage;
  final bool status;

  GenreState({
    required this.listGenreMovie,
    required this.listGenreTv,
    required this.listMovieImage,
    required this.listTvImage,
    required this.status,
  });
}

class GenreInitial extends GenreState {
  GenreInitial({
    required super.listGenreMovie,
    required super.listGenreTv,
    required super.status,
    required super.listMovieImage,
    required super.listTvImage,
  });
}

class GenreSuccess extends GenreState {
  GenreSuccess({
    required super.listGenreMovie,
    required super.listGenreTv,
    required super.status,
    required super.listMovieImage,
    required super.listTvImage,
  });
}

class GenreError extends GenreState {
  final String errorMessage;
  GenreError({
    required this.errorMessage,
    required super.listGenreMovie,
    required super.listGenreTv,
    required super.status,
    required super.listMovieImage,
    required super.listTvImage,
  });
}
