class Cities {
  int? id;
  String? name;
  String? select;

  Cities({this.id, this.name, this.select});

  Cities.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    select = json['select'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['select'] = this.select;
    return data;
  }
}
