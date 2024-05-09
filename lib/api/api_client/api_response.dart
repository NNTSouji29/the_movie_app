class APIResponse {
  Dates? dates;
  int? page;
  dynamic results;
  int? totalPages;
  int? totalResults;
  bool? success;
  int? statusCode;
  String? statusMessage;

  APIResponse({
    this.dates,
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
    this.success,
    this.statusCode,
    this.statusMessage,
  });

  APIResponse.fromJson(Map<String, dynamic> json) {
    dates = json['dates'] != null ? Dates.fromJson(json['dates']) : null;
    page = json['page'];
    results = json['results'] ?? json;
    totalPages = json['total_pages'];
    totalResults = json['total_results'];
    success = json['success'];
    statusCode = json['status_code'];
    statusMessage = json['status_message'];
  }

  Map<String, dynamic> toObject() {
    return Map<String, dynamic>.from(results);
  }

  List<Map<String, dynamic>> toList() {
    return List<Map<String, dynamic>>.from(results);
  }

  List<Map<String, dynamic>> toItems() {
    return List<Map<String, dynamic>>.from(results['results']);
  }
}

// when errror
class APIError implements Exception {
  bool? success;
  int? statusCode;
  String? statusMessage;

  APIError({
    this.success,
    this.statusCode,
    this.statusMessage,
  });

  APIError.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    statusCode = json['status_code'];
    statusMessage = json['status_message'];
  }

  @override
  String toString() {
    return statusMessage ?? 'An unexpected error occurred.';
  }
}

class Dates {
  String? maximun;
  String? minimum;

  Dates({this.maximun, this.minimum});

  Dates.fromJson(Map<String, dynamic> json) {
    maximun = json['maximun'];
    minimum = json['minimum'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['maximun'] = maximun;
    data['minimum'] = minimum;
    return data;
  }
}

class APISuccess {
  bool? success;
  int? statusCode;
  String? statusMessage;

  APISuccess({
    this.success,
    this.statusCode,
    this.statusMessage,
  });

  APISuccess.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    statusCode = json['status_code'];
    statusMessage = json['status_message'];
  }
}
