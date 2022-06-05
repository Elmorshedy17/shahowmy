import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shahowmy/app_core/resources/app_assets/app_assets.dart';
import 'package:shahowmy/features/home/widgets/dialog_enquiry.dart';


class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 2,
      backgroundColor:const Color(0xfff7f7f7),
      title: Image.asset(AppAssets.coloredLogo,height: 40,),
      centerTitle: true,
      leading: InkWell(
        onTap: (){
        },
        child: Padding(
          padding:const EdgeInsets.all(13),
          child: SvgPicture.asset(
            AppAssets.menu,
            matchTextDirection: true,
            height: 15,
          ),
        ),
      ),
      actions: [
        InkWell(
          onTap: (){
            showEnquiryDialog(context);
          },
          child: Padding(
            padding:const EdgeInsets.all(10),
            child: SvgPicture.asset(
              AppAssets.search,
              matchTextDirection: true,
              height: 20,
            ),
          ),
        )
      ],
    );
  }
}
