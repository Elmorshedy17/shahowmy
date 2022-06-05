import 'package:flutter/material.dart';
import 'package:shahowmy/app_core/app_core.dart';
import 'package:shahowmy/app_core/resources/app_font_styles/app_font_styles.dart';
import 'package:shahowmy/features/home/home_manager.dart';
import 'package:shahowmy/features/home/home_page.dart';
import 'package:shahowmy/shared/main_button/main_button_widget.dart';
import 'package:shahowmy/shared/selection_widget/selection_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void showChangeStatusDialog(context) {
  showGeneralDialog(
    context: context,
    barrierLabel: "Barrier",
    barrierDismissible: true,
    barrierColor: Colors.black.withOpacity(0.5),
    transitionDuration:const Duration(milliseconds: 500),
    pageBuilder: (_, __, ___) {
      return Center(
        child: ValueListenableBuilder<int>(
            valueListenable: locator<HomeManager>().notifier,
            builder: (context, value, _) {
              return Material(
                color: Colors.transparent,
                child: Container(
                  padding:const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                  height: MediaQuery.of(context).size.height * .6,
                  width: MediaQuery.of(context).size.width * .8,
                  // child:const SizedBox.expand(child: FlutterLogo()),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding:const EdgeInsets.only(top: 15,right: 20,left: 20),
                        child: Column(
                          children: [
                            Text("معاملة 123#",style: AppFontStyle.labelGreyStyle,),
                            const SizedBox(
                              height: 15,
                            ),
                            Text("تحويل الحالة",style: AppFontStyle.labelBlackStyle.copyWith(fontWeight: FontWeight.bold,fontSize: 16),),
                            const SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: ListView.separated(
                          // shrinkWrap: true,
                          // physics: const NeverScrollableScrollPhysics(),
                          itemCount: changeStatus.length,
                          separatorBuilder: (_, index) => const Divider(),
                          itemBuilder: (_, index) => InkWell(
                            onTap: (){
                              locator<HomeManager>().inSelected = changeStatus[index].id!;
                              print("${changeStatus[index].id!}");
                            },
                            child: SelectionWidget(
                              hasBorder: false,
                              title: changeStatus[index].status!,
                              isSelected: locator<HomeManager>().selectedIndex == changeStatus[index].id!,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Center(
                        child: MainButtonWidget(title: "تعديل",width: 150.w,onClick: (){

                        }),
                      ),
                    ],
                  ),
                  margin:const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(40)),
                ),
              );
            }
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