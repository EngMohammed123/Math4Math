import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:math_4_maze/core/constants/app_colors.dart';
import 'package:math_4_maze/core/utils/shared.dart';

class PracticeContainer extends StatelessWidget {
  const PracticeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: Shared.height * 0.25,
      decoration: BoxDecoration(
        color: AppColors.darkBlue02,
        borderRadius: BorderRadius.circular(20),
    ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: Shared.height * 0.15,
            decoration: BoxDecoration(
              color: AppColors.purple,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: EdgeInsets.all(Shared.width * 0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'تمرين : ',
                    style: GoogleFonts.aBeeZee(
                      fontSize: 35.sp,
                      color: AppColors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Image.asset('assets/images/logooo.jpg'),
                ],
              ),
            ),
          ),
          SizedBox(height: Shared.height * 0.015,),
          Text(
            'حدد القيمة المنزلية للرقم',
            style: GoogleFonts.aBeeZee(
              fontSize: 28.sp,
              color: AppColors.white,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
