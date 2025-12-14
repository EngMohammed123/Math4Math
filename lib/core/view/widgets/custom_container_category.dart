import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:math_4_maze/core/constants/app_colors.dart';
import 'package:math_4_maze/core/utils/shared.dart';

class CustomContainerCategory extends StatelessWidget {
  const CustomContainerCategory({
    super.key,
    required this.color,
    required this.title,
    required this.image,
    required this.shadowColor,
    this.textColor,
    this.isSeperated = false,
  });

  final String title;
  final String image;
  final Color color;
  final Color? textColor;
  final Color shadowColor;
  final bool isSeperated;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: Shared.width * 0.02,
        vertical: Shared.height * 0.02,
      ),
      decoration: BoxDecoration(
        color: color ?? Theme.of(context).colorScheme.primary, // Light cyan
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color:
                shadowColor ??
                Theme.of(context).colorScheme.shadow, // Default shadow color
            offset: const Offset(0, 7),
            blurRadius: 0,
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.rakkas(
              fontSize: 30.sp,
              color: textColor ?? AppColors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: Shared.height * 0.03,),
          isSeperated
              ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/Group 1149.png', width: 22.w),
                    Image.asset('assets/images/Group 1153.png', width: 22.w),
                    Image.asset('assets/images/Group 1149.png', width: 22.w),
                    Image.asset('assets/images/Group 1150.png', width: 22.w),
                    Image.asset('assets/images/Group 1149.png', width: 22.w),
                    Image.asset('assets/images/Group 1148.png', width: 22.w),
                  ],
                )
              : Image.asset(image),
        ],
      ),
    );
  }
}
