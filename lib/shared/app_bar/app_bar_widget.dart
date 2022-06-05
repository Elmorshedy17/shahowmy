import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shahowmy/app_core/app_core.dart';
import 'package:shahowmy/app_core/resources/app_assets/app_assets.dart';
import 'package:shahowmy/app_core/resources/app_strings/app_strings.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/*
Created by: Mohammad Salah
Date: Monday 11 April 2022
*/
class AppBarWidget extends StatelessWidget {
  final appBarColor;
  final bool hasBackButton,
      hasLogoutBtn;
  double elevation;
  final String? title;
  final VoidCallback? onBackBtnClicked,onLogoutBtnClicked;

   AppBarWidget(
      {Key? key,
        this.appBarColor = Colors.white,
      this.hasBackButton = false,
      this.hasLogoutBtn = false,
      this.title,
      this.elevation = 1,
      this.onBackBtnClicked,
      this.onLogoutBtnClicked})
      : super(key: key);

  /// defaultOnBackBtnClicked
  _defaultOnBackBtnClicked(context) {
    Navigator.of(context).pop();
  }

  /// defaultOnPhoneBtnClicked
  _defaultOnPhoneBtnClicked(context) {
    /// TODO: Implement DefaultOnPhoneBtnClicked
  }

  /// defaultOnMessageBtnClicked
  _defaultOnMessageBtnClicked(context) {
    /// TODO: Implement DefaultOnMessageBtnClicked
  }

  _defaultOnLogoutBtnClicked(context) {
    /// TODO: Implement DefaultOnLogoutBtnClicked

    // Navigator.of(context).pushNamed(AppRoutesNames.NOTIFICATIONS_PAGE);
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: appBarColor,
      centerTitle: true,
      elevation: elevation,
      leading: IconButton(
        icon: SvgPicture.asset(
          AppAssets.backButton,
          matchTextDirection: true,
          // height: 45.sp,
        ),
        onPressed: onBackBtnClicked ??
                () {
              _defaultOnBackBtnClicked(context);
            },
      ),
      title: title != null ? Text(title!) : null,
      // actions: [


        // if (hasLogoutBtn)
        //   TextButton(
        //     child:const Text(
        //       'تسجيل خروج'
        //       '',
        //       style: TextStyle(color: Colors.red),
        //     ),
        //     onPressed: onLogoutBtnClicked ??
        //         () {
        //           _defaultOnLogoutBtnClicked(context);
        //         },
        //   ),
      // ],
    );
  }
}
