import 'package:docdoc_app/core/constants/style/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppLogoAndName extends StatelessWidget {
  const AppLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 22.h, bottom: 41.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/svgs/docdoc_logo.svg'),
          SizedBox(width: 10.w),
          Text('Docdoc', style: TextStyles.font24BoldBlack),
        ],
      ),
    );
  }
}
