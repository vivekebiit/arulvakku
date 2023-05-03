class PrayersViewModel {
  int? id;
  String? name;
  String? place;
  String? prayer;
  String? response;
  String? fcm;

  PrayersViewModel(
      {this.id, this.name, this.place, this.prayer, this.response, this.fcm});

  PrayersViewModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    place = json['place'];
    prayer = json['prayer'];
    response = json['response'];
    fcm = json['fcm'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['place'] = place;
    data['prayer'] = prayer;
    data['response'] = response;
    data['fcm'] = fcm;
    return data;
  }
}
