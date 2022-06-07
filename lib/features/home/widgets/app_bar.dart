import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shahowmy/app_core/locator.dart';
import 'package:shahowmy/app_core/resources/app_assets/app_assets.dart';
import 'package:shahowmy/app_core/resources/app_routes_names/app_routes_names.dart';
import 'package:shahowmy/app_core/services/prefs_service.dart';
import 'package:shahowmy/features/home/widgets/dialog_enquiry.dart';


class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 2,
      // leadingWidth: 90,
      backgroundColor:const Color(0xfff7f7f7),
      title: Image.asset(AppAssets.coloredLogo,height: 40,),
      centerTitle: true,
      leading: InkWell(
        onTap: (){
          showEnquiryDialog(context);
        },
        child: Padding(
          padding:const EdgeInsets.only(top: 15,bottom: 15,right: 0),
          child: SvgPicture.asset(
            AppAssets.search,
            matchTextDirection: true,
            height: 20,
          ),
        ),
      ),
      actions: [
        InkWell(
          onTap: (){
          },
          child: Padding(
            padding:const EdgeInsets.only(left: 10,top: 10),
            child: InkWell(
              onTap: (){
                locator<PrefsService>().removeUserObj();
                Navigator.of(context)
                    .pushNamedAndRemoveUntil(
                    AppRoutesNames.loginPage,
                        (Route<dynamic> route) => false);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.exit_to_app_rounded,size: 25,color: Colors.red.withOpacity(.5),),
                  Text("تسجيل خروج",style: TextStyle(fontSize: 10,color: Colors.red.withOpacity(.5),height: 1.3),)
                ],
              ),
            ),
          ),
        ),


      ],
    );
  }
}
