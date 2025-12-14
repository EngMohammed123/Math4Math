import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:math_4_maze/core/constants/app_colors.dart';
import 'package:math_4_maze/core/utils/shared.dart';
import 'package:math_4_maze/core/view/screens/home_value/home_value_screen.dart';
import 'package:math_4_maze/core/view/widgets/custom_app_bar.dart';
import 'package:math_4_maze/core/view/widgets/custom_container_category.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'الشاشة الرئيسية',),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Shared.width * 0.04,
            vertical: Shared.height * 0.04,
          ),
          child: Column(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomeValueScreen(),));
                },
                child: CustomContainerCategory(
                  color: AppColors.tangerine,
                  shadowColor: AppColors.wheat,
                  title: 'القيمة المنزلية',
                  image: 'assets/images/Mask Group 5.png',
                ),
              ),
              SizedBox(height: Shared.height * 0.04),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: Shared.width * 0.43,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomContainerCategory(
                          color: AppColors.tangerine,
                          shadowColor: AppColors.wheat,
                          title: 'قراءة الأعداد وكتابتها ضمن مئات الألوف',
                          image: '',
                          isSeperated: true,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: Shared.height * 0.04),
                          child: CustomContainerCategory(
                            color: AppColors.tangerine,
                            shadowColor: AppColors.wheat,
                            title: 'تقريب الأعداد',
                            image: 'assets/images/Group 852.png',
                          ),
                        ),
                        CustomContainerCategory(
                          color: AppColors.tangerine,
                          shadowColor: AppColors.wheat,
                          title: 'جمع الأعداد',
                          image: 'assets/images/Group 1385.png',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: Shared.width * 0.43,
                    child: Column(
                      children: [
                        CustomContainerCategory(
                          color: AppColors.tangerine,
                          shadowColor: AppColors.wheat,
                          title: 'مقارنة الأعداد وترتيبها',
                          image: 'assets/images/Group 1422.png',
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: Shared.height * 0.04),
                          child: CustomContainerCategory(
                            color: AppColors.tangerine,
                            shadowColor: AppColors.wheat,
                            textColor: AppColors.white,
                            title: 'تقدير المجموع والفرق',
                            image: 'assets/images/Group 1429.png',
                          ),
                        ),
                        CustomContainerCategory(
                          color: AppColors.tangerine,
                          shadowColor: AppColors.wheat,
                          title: 'طرح ألأعداد',
                          image: 'assets/images/Group 1428.png',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: Shared.height * 0.04),
            ],
          ),
        ),
      ),
    );
  }
}



// GridView.count(
// shrinkWrap: true,
// physics: NeverScrollableScrollPhysics(),
// crossAxisCount: 2,
// crossAxisSpacing: Shared.width * 0.04,
// mainAxisSpacing: Shared.height * 0.04,
// childAspectRatio: 0.75, // تتحكم في طول الكارد
// children: [
// CustomContainerCategory(
// color: AppColors.tangerine,
// shadowColor: AppColors.wheat,
// title: 'قراءة الأعداد وكتابتها ضمن مئات الألوف',
// image: '',
// isSeperated: true,
// ),
// CustomContainerCategory(
// color: AppColors.tangerine,
// shadowColor: AppColors.wheat,
// title: 'مقارنة الأعداد وترتيبها',
// image: 'assets/images/Group 1422.png',
// ),
// CustomContainerCategory(
// color: AppColors.tangerine,
// shadowColor: AppColors.wheat,
// title: 'تقريب الأعداد',
// image: 'assets/images/Group 852.png',
// ),
// CustomContainerCategory(
// color: AppColors.tangerine,
// shadowColor: AppColors.wheat,
// title: 'تقدير المجموع والفرق',
// image: 'assets/images/Group 1429.png',
// ),
// CustomContainerCategory(
// color: AppColors.tangerine,
// shadowColor: AppColors.wheat,
// title: 'جمع الأعداد',
// image: 'assets/images/Group 1385.png',
// ),
// CustomContainerCategory(
// color: AppColors.tangerine,
// shadowColor: AppColors.wheat,
// title: 'طرح الأعداد',
// image: 'assets/images/Group 1428.png',
// ),
// ],
// )
