import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shahowmy/app_core/app_core.dart';
import 'package:shahowmy/app_core/resources/app_assets/app_assets.dart';
import 'package:shahowmy/app_core/resources/app_font_styles/app_font_styles.dart';
import 'package:shahowmy/features/home/home_manager.dart';
import 'package:shahowmy/features/home/home_page.dart';
import 'package:shahowmy/shared/main_button/main_button_widget.dart';
import 'package:shahowmy/shared/selection_widget/selection_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void showDownloadDialog(context) {
  showGeneralDialog(
    context: context,
    barrierLabel: "Barrier",
    barrierDismissible: true,
    barrierColor: Colors.black.withOpacity(0.5),
    transitionDuration:const Duration(milliseconds: 500),
    pageBuilder: (_, __, ___) {
      return Center(
        child: Material(
          color: Colors.transparent,
          child: Container(
            padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 25),
            height: MediaQuery.of(context).size.height * .5,
            width: MediaQuery.of(context).size.width * .8,
            // child:const SizedBox.expand(child: FlutterLogo()),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding:const EdgeInsets.only(top: 15,right: 10,left: 10),
                  child: Column(
                    children: [
                      Text("الملف",style: AppFontStyle.labelBlackStyle.copyWith(fontWeight: FontWeight.bold,fontSize: 16),),
                      const SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.separated(
                    // shrinkWrap: true,
                    // physics: const NeverScrollableScrollPhysics(),
                    itemCount: downloadFiles.length,
                    separatorBuilder: (_, index) => const Divider(
                      height: 45,
                    ),
                    itemBuilder: (_, index) => InkWell(
                      onTap: (){

                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("${downloadFiles[index].title}",style: AppFontStyle.labelBlackStyle,),
                          SvgPicture.asset(
                            AppAssets.download,
                            // color: Colors.brown,
                            height: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Center(
                  child: MainButtonWidget(title: "الغاء",width: 150.w,onClick: (){
                    Navigator.of(context).pop();
                  }),
                ),
              ],
            ),
            margin:const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(40)),
          ),
        ),
      );
    },
    transitionBuilder: (_, anim, __, child) {
      Tween<Offset> tween;
      if (anim.status == AnimationStatus.reverse) {
        tween = Tween(begin:const Offset(-1, 0), end: Offset.zero);
      } else {
        tween = Tween(begin:const Offset(1, 0), end: Offset.zero);
      }

      return SlideTransition(
        position: tween.animate(anim),
        child: FadeTransition(
          opacity: anim,
          child: child,
        ),
      );
    },
  );
}


class DownloadFiles{
  int?id;
  String? title;
  DownloadFiles({this.id,this.title});
}

List<DownloadFiles> downloadFiles = [
  DownloadFiles(
    id: 1,
    title: "جواز السفر"
  ),
  DownloadFiles(
    id: 2,
    title: "جواز السفر"
  ),
];