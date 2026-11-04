import 'package:docdoc_app/core/constants/extention.dart';
import 'package:docdoc_app/core/constants/style/text_styles.dart';
import 'package:docdoc_app/core/constants/values/app_colors.dart';
import 'package:docdoc_app/core/constants/values/app_routes.dart';
import 'package:flutter/material.dart';

class GetStartedBtn extends StatelessWidget {
  const GetStartedBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(AppColors.primaryBlue),
        minimumSize: WidgetStatePropertyAll(Size(double.infinity, 52)),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(16),
          ),
        ),
      ),
      onPressed: () => context.pushNamed(Routes.logIn),
      child: Text("Get Started", style: TextStyles.font16Weight600White),
    );
  }
}
