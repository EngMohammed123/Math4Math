import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:math_4_maze/core/constants/app_colors.dart';
import 'package:math_4_maze/core/utils/shared.dart';

class NumbersCategoriesContainer extends StatelessWidget {
  const NumbersCategoriesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: Shared.height * 0.18,
      decoration: BoxDecoration(
        color: AppColors.freshGreen,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  customField('د دو', true),
                  SizedBox(height: Shared.height * 0.007),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      breakingNumberContainer('آحاد', true, false, ones: 6),
                      SizedBox(width: Shared.width * 0.01),
                      breakingNumberContainer('عشرات', false, false, Tens: 1),
                      SizedBox(width: Shared.width * 0.01),
                      breakingNumberContainer(
                        'مئات',
                        false,
                        false,
                        hundreds: 4,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(width: Shared.width * 0.02),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  customField('ف دور', false),
                  SizedBox(height: Shared.height * 0.007),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      breakingNumberContainer('آحاد', false, false, ones: 7),
                      SizedBox(width: Shared.width * 0.01),
                      breakingNumberContainer('عشرات', false, false, Tens: 3),
                      SizedBox(width: Shared.width * 0.01),
                      breakingNumberContainer('مئات', false, true, hundreds: 2),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Expanded breakingNumberContainer(
    String title,
    bool isBorderRight,
    bool isBorderLeft, {
    int? ones,
    int? Tens,
    int? hundreds,
  }) {
    return Expanded(
      child: Container(
        height: Shared.height * 0.09,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.only(
            bottomRight: isBorderRight
                ? Radius.circular(18)
                : Radius.circular(0),
            bottomLeft: isBorderLeft ? Radius.circular(18) : Radius.circular(0),
          ),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: FractionallySizedBox(
                heightFactor: 0.5,
                widthFactor: 1.0,
                child: Container(
                  color: AppColors.lightPeriwinkle,
                  child: Center(
                    child: Text(
                      title,
                      style: GoogleFonts.rakkas(
                        fontSize: 18.sp,
                        color: AppColors.black,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: Shared.height * 0.006),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  title == 'آحاد'
                      ? '$ones'
                      : title == 'عشرات'
                      ? '$Tens'
                      : '$hundreds',
                  style: GoogleFonts.rakkas(
                    fontSize: 16.sp,
                    color: AppColors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container customField(String title, bool isBorderRight) {
    return Container(
      width: double.infinity,
      height: Shared.height * 0.065,
      decoration: BoxDecoration(
        color: AppColors.darkBlue02,
        borderRadius: BorderRadius.only(
          topLeft: isBorderRight ? Radius.circular(0) : Radius.circular(18),
          topRight: isBorderRight ? Radius.circular(18) : Radius.circular(0),
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: GoogleFonts.rakkas(
            fontSize: 18.sp,
            color: AppColors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
