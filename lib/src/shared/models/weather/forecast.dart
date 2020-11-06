class Forecast {
  String date;
  String weekday;
  int max;
  int min;
  String description;
  String condition;

  Forecast(
      {this.date,
      this.weekday,
      this.max,
      this.min,
      this.description,
      this.condition});

  Forecast.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    weekday = json['weekday'];
    max = json['max'];
    min = json['min'];
    description = json['description'];
    condition = json['condition'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    data['weekday'] = this.weekday;
    data['max'] = this.max;
    data['min'] = this.min;
    data['description'] = this.description;
    data['condition'] = this.condition;
    return data;
  }
}
