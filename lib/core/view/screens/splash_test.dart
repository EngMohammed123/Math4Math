import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_colors.dart';
import '../widgets/custom_button.dart';

class SplashTestPage extends StatelessWidget {
  const SplashTestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'اختبار التصميم',
                style: TextStyle(
                  fontFamily: 'JFFlat',
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.splashTitle,
                ),
              ),
              SizedBox(height: 40.h),
              CustomButton(
                text: 'زر تجريبي ذهبي',
                backgroundColor: AppColors.goldenYellow,
                textColor: AppColors.splashTitle,
                onPressed: () {},
              ),
              SizedBox(height: 16.h),
              CustomButton(
                text: 'زر تجريبي أزرق',
                backgroundColor: AppColors.brightBlue,
                textColor: Colors.white,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
