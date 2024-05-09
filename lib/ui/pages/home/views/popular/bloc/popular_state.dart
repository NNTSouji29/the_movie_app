part of 'popular_bloc.dart';

abstract class PopularState {
  final List<MultipleMedia> listPopular;
  final int selectedIndex;
  final bool autoPlay;

  PopularState({
    required this.listPopular,
    required this.selectedIndex,
    required this.autoPlay,
  });
}

class PopularInitial extends PopularState {
  PopularInitial({
    required super.listPopular,
    required super.selectedIndex,
    required super.autoPlay,
  });
}

class PopularSuccess extends PopularState {
  PopularSuccess({
    required super.listPopular,
    required super.selectedIndex,
    required super.autoPlay,
  });
}

class PopularError extends PopularState {
  final String errorMessage;
  PopularError({
    required this.errorMessage,
    required super.listPopular,
    required super.selectedIndex,
    required super.autoPlay,
  });
}
