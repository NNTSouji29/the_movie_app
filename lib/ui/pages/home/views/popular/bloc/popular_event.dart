part of 'popular_bloc.dart';

abstract class PopularEvent {}

class FetchData extends PopularEvent {
  final String language;
  final int page;
  final String region;
  FetchData({
    required this.language,
    required this.page,
    required this.region,
  });
}

class SlidePageView extends PopularEvent {
  final int selectedIndex;
  SlidePageView({
    required this.selectedIndex,
  });
}

class AutoSlide extends PopularEvent {
  final bool autoPlay;
  AutoSlide({
    required this.autoPlay,
  });
}
