class Currency {
  int? id;
  String? name;
  String? image;
  String? selected;

  Currency({this.id, this.name, this.image, this.selected});

  Currency.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    selected = json['selected'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['image'] = this.image;
    data['selected'] = this.selected;
    return data;
  }
}
