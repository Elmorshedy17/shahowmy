// import 'dart:io';
// import 'package:dio/dio.dart';
// import 'package:shahowmy/app_core/app_core.dart';
// import 'package:shahowmy/shared/phone_widget/countries_and_gender/countries_and_gender_response.dart';
//
// class CountriesAndGenderRepo {
//   static Future<CountriesAndGenderResponse> countriesAndGender() async {
//     try {
//       final Response response = await locator<ApiService>().dioClient.get(
//             '${locator<ApiService>().dioClient.options.baseUrl}countries',
//           );
//
//       return CountriesAndGenderResponse.fromJson(response.data);
//     } on DioError catch (error) {
//       if (error.response?.statusCode == 401 ||
//           error.response?.statusCode == 422) {
//         return CountriesAndGenderResponse.fromJsonError(
//             json: error.response?.data, error: error);
//       } else if (error.error is SocketException) {
//         print('xXx xc ${error.error}');
//         return CountriesAndGenderResponse.makeError(
//             error: error,
//             errorMsg: locator<PrefsService>().appLanguage == 'en'
//                 ? 'No Internet Connection'
//                 : 'لا يوجد إتصال بالشبكة');
//       } else {
//         print('xXx xc ${error.error}');
//         String errorDescription = locator<PrefsService>().appLanguage == 'en'
//             ? 'Something Went Wrong Try Again Later'
//             : 'حدث خطأ ما حاول مرة أخرى لاحقاً';
//
//         return CountriesAndGenderResponse.makeError(
//             error: error, errorMsg: errorDescription);
//       }
//     }
//   }
// }
