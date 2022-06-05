import 'package:get_it/get_it.dart';
import 'package:shahowmy/app_core/fcm/FcmTokenManager.dart';
import 'package:shahowmy/app_core/fcm/localNotificationService.dart';
import 'package:shahowmy/app_core/fcm/pushNotification_service.dart';
import 'package:shahowmy/features/choose_language/choose_language_manager.dart';
import 'package:shahowmy/features/get_search_info/get_search_info_manager.dart';
import 'package:shahowmy/features/home/home_manager.dart';
import 'package:shahowmy/features/login/login_manager.dart';

import 'app_core.dart';

final GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  // Setup PrefsService.
  var instance = await PrefsService.getInstance();
  locator.registerSingleton<PrefsService>(instance!);


  /// AppLanguageManager
  locator.registerLazySingleton<AppLanguageManager>(() => AppLanguageManager());

  // /// AddAddressCheckOutManager
  // locator.registerLazySingleton<AddAddressCheckOutManager>(
  //     () => AddAddressCheckOutManager());

  // /// FcmTokenManager
  locator.registerLazySingleton<FcmTokenManager>(() => FcmTokenManager());
  //
  // /// AnalyticsService
  // locator.registerLazySingleton<AnalyticsService>(() => AnalyticsService());
  //
  // /// LocalNotificationService
  locator.registerLazySingleton<LocalNotificationService>(
          () => LocalNotificationService());
  //
  // /// PushNotificationService
  locator.registerLazySingleton<PushNotificationService>(
          () => PushNotificationService());

  /// LoadingManager
  locator.registerLazySingleton<LoadingManager>(() => LoadingManager());

  /// ApiService
  locator.registerLazySingleton<ApiService>(() => ApiService());

  /// ToastTemplate
  locator.registerLazySingleton<ToastTemplate>(() => ToastTemplate());


  /// NavigationService
  locator.registerLazySingleton<NavigationService>(() => NavigationService());

  /// ChooseLanguageManager
  locator.registerLazySingleton<ChooseLanguageManager>(
      () => ChooseLanguageManager());

  /// HomeManager
  locator.registerLazySingleton<HomeManager>(
      () => HomeManager());

  /// LoginManager
  locator.registerLazySingleton<LoginManager>(
      () => LoginManager());

  /// SearchInfoManager
  locator.registerLazySingleton<SearchInfoManager>(
      () => SearchInfoManager());

}
