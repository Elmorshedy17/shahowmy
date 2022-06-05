//
// import 'package:shahowmy/app_core/app_core.dart';
// import 'package:shahowmy/shared/phone_widget/countries_and_gender/countries_and_gender_repo.dart';
// import 'package:shahowmy/shared/phone_widget/countries_and_gender/countries_and_gender_response.dart';
// // import 'package:bego/features/update_country/update_country_page.dart';
// import 'package:rxdart/rxdart.dart';
// // import 'package:bego/app_core/app_core.dart';
// // import 'package:bego/shared/phone_widget/countries_and_gender/countries_and_gender_repo.dart';
// // import 'package:bego/shared/phone_widget/countries_and_gender/countries_and_gender_response.dart';
//
// class CountriesAndGenderManager extends Manager<CountriesAndGenderResponse> {
//   final BehaviorSubject<CountriesAndGenderResponse> _subject =
//   BehaviorSubject<CountriesAndGenderResponse>();
//
//   List<Gender>? gender;
//   List<Gender>? genders=[];
//   List<Country>? countries = [];
//
//   void getCountriesData (){
//     CountriesAndGenderRepo.countriesAndGender().then((value)  {
//
//
//        value.data!.countries!.forEach((element) {
//            countries!.add(element);
//     });
//
//        value.data!.gender!.forEach((element) {
//          genders!.add(element);
//        });
//     });
//
//
//   }
//
//
//   Stream<CountriesAndGenderResponse> countriesAndGender$() {
//
//     Stream.fromFuture(CountriesAndGenderRepo.countriesAndGender())
//         .listen((result) {
//       if (result.error == null) {
//         _subject.add(result);
//         // gender = result.data?.gender;
//       } else {
//         _subject.addError(result.error);
//       }
//     });
//     return _subject.stream;
//   }
//
//   @override
//   void dispose() {}
//
//   @override
//   void clearSubject() {}
// }
//
//
// class Gender {
//   String? id;
//   String? name;
//
//   Gender({this.id, this.name});
//
//   Gender.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     return data;
//   }
// }
//
//
// // class Country {
// //   int? id;
// //   String? name;
// //   String? code;
// //   String? selected;
// //   int? currencyId;
// //
// //   Country({this.id, this.name, this.code, this.selected, this.currencyId});
// //
// //   Country.fromJson(Map<String, dynamic> json) {
// //     id = json['id'];
// //     name = json['name'];
// //     code = json['code'];
// //     selected = json['selected'];
// //     currencyId = json['currency_id'];
// //   }
// //
// //   Map<String, dynamic> toJson() {
// //     final Map<String, dynamic> data = <String, dynamic>{};
// //     data['id'] = id;
// //     data['name'] = name;
// //     data['code'] = code;
// //     data['selected'] = selected;
// //     data['currency_id'] = this.currencyId;
// //
// //     return data;
// //   }
// // }
