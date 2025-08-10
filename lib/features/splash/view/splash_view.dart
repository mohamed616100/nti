import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mvvmproject/core/helper/my_navigator.dart';
import 'package:mvvmproject/core/utils/app_assets.dart';
import 'package:mvvmproject/core/utils/app_colors.dart';

import '../../auth/view/register_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {

    super.initState();
    Future.delayed(
      Duration(seconds: 1),
        (){
        goTo(context, RegisterView());
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            SvgPicture.asset(AppAssets.logo,
              width: double.infinity,
              height: 344.h,
            ),
            SizedBox(height: 44.h,),
            Text('TODO',
            style: TextStyle(
              fontSize: 36.sp,
              fontWeight: FontWeight.w900,
              color: AppColors.primary

            ),)
          ],
        ),
      ),
    );
  }
}
