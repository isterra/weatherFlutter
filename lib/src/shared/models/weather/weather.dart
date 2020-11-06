import 'package:model_flutter/src/shared/models/weather/results.dart';

class Weather {
  String by;
  bool validKey;
  Results results;
  bool fromCache;

  Weather({this.by, this.validKey, this.results, this.fromCache});

  Weather.fromJson(Map<String, dynamic> json) {
    by = json['by'];
    validKey = json['valid_key'];
    results =
        json['results'] != null ? new Results.fromJson(json['results']) : null;
    fromCache = json['from_cache'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['by'] = this.by;
    data['valid_key'] = this.validKey;
    if (this.results != null) {
      data['results'] = this.results.toJson();
    }
    data['from_cache'] = this.fromCache;
    return data;
  }
}
