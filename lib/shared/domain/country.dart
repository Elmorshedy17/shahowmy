class Country {
  int? id;
  String? name;
  String? code;
  String? selected;
  int? currencyId;

  Country({this.id, this.name, this.code, this.selected, this.currencyId});

  Country.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    code = json['code'];
    selected = json['selected'];
    currencyId = json['currency_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['code'] = code;
    data['selected'] = selected;
    data['currency_id'] = this.currencyId;

    return data;
  }
}
