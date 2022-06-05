// import 'package:bego/domain/cities.dart';
//
// class Governates {
//   int? id;
//   String? name;
//   String? select;
//   List<Cities>? cities;
//
//   Governates({this.id, this.name, this.select, this.cities});
//
//   Governates.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     select = json['select'];
//     if (json['cities'] != null) {
//       cities = <Cities>[];
//       json['cities'].forEach((v) {
//         cities!.add(new Cities.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     data['select'] = this.select;
//     if (this.cities != null) {
//       data['cities'] = this.cities!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }