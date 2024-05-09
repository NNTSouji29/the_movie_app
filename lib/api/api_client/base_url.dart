class BaseURL {
  const BaseURL._({
    required this.schemes,
    required this.host,
    required this.basePath,
  });

  final String schemes;
  final String host;
  final String basePath;
  String get url => schemes + host + basePath;
}

class BaseURLs {
  
  static const BaseURL development = BaseURL._(
    schemes: 'https://',
    host: 'api.themoviedb.org',
    basePath: '/3',
  );
}
