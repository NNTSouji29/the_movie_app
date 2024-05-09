part of 'provider_bloc.dart';

class ProviderState {
  List<MediaProvider> listMovieProviders;
  List<MediaProvider> listTvProviders;
  final bool status;
  ProviderState({
    required this.listMovieProviders,
    required this.listTvProviders,
    required this.status,
  });
}

class ProviderInitial extends ProviderState {
  ProviderInitial({
    required super.status,
    required super.listMovieProviders,
    required super.listTvProviders,
  });
}

class ProviderSuccess extends ProviderState {
  ProviderSuccess({
    required super.status,
    required super.listMovieProviders,
    required super.listTvProviders,
  });
}

class ProviderError extends ProviderState {
  final String errorMessage;
  ProviderError({
    required this.errorMessage,
    required super.status,
    required super.listMovieProviders,
    required super.listTvProviders,
  });
}
