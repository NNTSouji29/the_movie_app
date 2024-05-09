import '../constants/constants.dart';

extension ApiKey on Map<String, dynamic>? {
  Map<String, dynamic>? addApiKey() {
    if (this == null) {
      return {'api_key': AppConstants.kApiKey};
    } else {
      this!.addAll({
        'api_key': AppConstants.kApiKey,
      });

      return this;
    }
  }
}
