import 'package:docdoc_app/core/constants/style/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageLogoText extends StatelessWidget {
  const ImageLogoText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 19.w),
          child: SvgPicture.asset('assets/svgs/docdoc_logo_opacity.svg'),
        ),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              begin: AlignmentGeometry.bottomCenter,
              end: AlignmentGeometry.topCenter,
              stops: [0.14, 0.4],
              colors: [Colors.white, Colors.white.withAlpha(0)],
            ),
          ),
          child: Image.asset('assets/images/onboarding_doc_image.png'),
        ),
        Positioned(
          bottom: 13,
          left: 0,
          right: 0,
          child: Text(
            "Best Doctor \n Appointment App",
            textAlign: TextAlign.center,
            style: TextStyles.font32BoldBlue,
          ),
        ),
      ],
    );
  }
}
