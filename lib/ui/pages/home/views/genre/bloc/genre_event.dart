part of 'genre_bloc.dart';

abstract class GenreEvent {}

class FetchData extends GenreEvent {
  final String language;
  FetchData({
    required this.language,
  });
}

class ChangeList extends GenreEvent {
  final bool status;
  ChangeList({
    required this.status,
  });
}

