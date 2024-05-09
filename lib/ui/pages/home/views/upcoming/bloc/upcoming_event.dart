part of 'upcoming_bloc.dart';

abstract class UpcomingEvent {}

class FetchData extends UpcomingEvent {
  final String language;
  final int page;
  final String region;
  FetchData({
    required this.language,
    required this.page,
    required this.region,
  });
}
