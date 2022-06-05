//
//
// import 'package:shahowmy/shared/phone_widget/countries_and_gender/countries_and_gender_manager.dart';
//
// class CountriesAndGenderResponse {
//   int? status;
//   String? message;
//   Data? data;
//
//   var error;
//   String? errorMsg;
//
//   CountriesAndGenderResponse.makeError({this.error, this.errorMsg});
//   CountriesAndGenderResponse.fromJsonError({
//     required Map<String, dynamic> json,
//     this.error,
//   }) {
//     status = json['status'];
//     message = json['message'];
//   }
//
//   CountriesAndGenderResponse({this.status, this.message, this.data});
//
//   CountriesAndGenderResponse.fromJson(Map<String, dynamic> json) {
//     status = json['status'];
//     message = json['message'];
//     data = json['data'] != null ? new Data.fromJson(json['data']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['status'] = this.status;
//     data['message'] = this.message;
//     if (this.data != null) {
//       data['data'] = this.data!.toJson();
//     }
//     return data;
//   }
// }
//
// class Data {
//   List<Country>? countries;
//   List<Gender>? gender;
//
//   Data({this.countries, this.gender});
//
//   Data.fromJson(Map<String, dynamic> json) {
//     if (json['countries'] != null) {
//       countries = <Country>[];
//       json['countries'].forEach((v) {
//         countries!.add(new Country.fromJson(v));
//       });
//     }
//     if (json['genders'] != null) {
//       gender = <Gender>[];
//       json['genders'].forEach((v) {
//         gender!.add(new Gender.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.countries != null) {
//       data['countries'] = this.countries!.map((v) => v.toJson()).toList();
//     }
//     if (this.gender != null) {
//       data['genders'] = this.gender!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
