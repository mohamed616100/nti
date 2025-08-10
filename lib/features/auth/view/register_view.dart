import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mvvmproject/core/helper/my_navigator.dart';
import 'package:mvvmproject/core/translation/translation_keys.dart';
import 'package:mvvmproject/core/utils/app_assets.dart';
import 'package:mvvmproject/core/utils/app_paddings.dart';
import 'package:mvvmproject/core/widgets/default_btn.dart';
import 'package:mvvmproject/core/widgets/default_form_field.dart';
import 'package:mvvmproject/features/home/view/home_view.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {

  var passwordController =  TextEditingController();
  bool passwordSecure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 298.h,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
              image: DecorationImage(
                image: AssetImage(AppAssets.flag),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 23.h),
          Padding(
            padding: AppPaddings.defaultHomePadding,
            child: Column(
              children: [
                DefaultFormField(
                  controller: TextEditingController(),
                  hintText: 'Username',
                  prefixIcon: IconButton(
                    onPressed: null,
                    icon: SvgPicture.asset(AppAssets.profileIcon),
                  ),
                ),
                SizedBox(height: 10.h),
                DefaultFormField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: passwordSecure,
                  prefixIcon: IconButton(
                    onPressed: null,
                    icon: SvgPicture.asset(AppAssets.keyIcon),
                  ),
                  suffixIcon: IconButton(
                    onPressed: (){
                      setState(() {
                        passwordSecure = !passwordSecure;
                      });
                    },
                    icon: SvgPicture.asset( passwordSecure ?AppAssets.unlockIcon: AppAssets.lockIcon),
                  ),
                ),
                SizedBox(height: 10.h),
                DefaultFormField(
                  controller: TextEditingController(),
                  hintText: 'Password confirm',
                  obscureText: true,
                  prefixIcon: IconButton(
                    onPressed: null,
                    icon: SvgPicture.asset(AppAssets.keyIcon),
                  ),
                  suffixIcon: IconButton(
                    onPressed: (){},
                    icon: SvgPicture.asset(AppAssets.lockIcon),
                  ),
                ),
                SizedBox(height: 10.h),
                DefaultBtn(onPressed: ()=>goTo(context, HomeView()), text: TranslationKeys.register)

              ],
            ),
          ),
        ],
      ),
    );
  }
}
