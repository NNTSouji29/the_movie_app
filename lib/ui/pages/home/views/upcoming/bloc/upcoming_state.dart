// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'upcoming_bloc.dart';

abstract class UpcomingState {
  final List<MultipleMedia> listUpcoming;
  UpcomingState({
    required this.listUpcoming,
  });
}

class UpcomingInitial extends UpcomingState {
  UpcomingInitial({required super.listUpcoming});
}

class UpcomingSuccess extends UpcomingState {
  UpcomingSuccess({required super.listUpcoming});
}

class UpcomingError extends UpcomingState {
  final String errorMessage;

  UpcomingError({
    required this.errorMessage,
    required super.listUpcoming,
  });
}
