part of 'provider_bloc.dart';

class ProviderEvent {}

class FetchData extends ProviderEvent {
  final String language;
  final String? watchRegion;
  FetchData({
    required this.language,
    this.watchRegion,
  });
}

class ChangeList extends ProviderEvent {
  final bool status;
  ChangeList({
    required this.status,
  });
}
