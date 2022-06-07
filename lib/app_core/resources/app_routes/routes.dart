import 'package:flutter/material.dart';
import 'package:shahowmy/app_core/resources/app_routes_names/app_routes_names.dart';
import 'package:shahowmy/features/contacts/contacts_page.dart';
import 'package:shahowmy/features/home/home_page.dart';
import 'package:shahowmy/features/login/login_page.dart';
import 'package:shahowmy/features/main_tabs/main_tabs_widget.dart';

class Routes {
  static final Map<String, Widget Function(BuildContext)> routes = {
    // AppRoutesNames.mainTabsWidget: (_) => const MainTabsWidget(),
    AppRoutesNames.loginPage: (_) => const LoginPage(),
    AppRoutesNames.homePage: (_) => const HomePage(),
    AppRoutesNames.contactsPage: (_) => const ContactsPage(),
  };
}
