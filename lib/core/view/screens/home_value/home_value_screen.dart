import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:math_4_maze/core/constants/app_colors.dart';
import 'package:math_4_maze/core/utils/shared.dart';
import 'package:math_4_maze/core/view/screens/home_value/widgets/numbers_categories_container.dart';
import 'package:math_4_maze/core/view/screens/home_value/widgets/practice_container.dart';
import 'package:math_4_maze/core/view/widgets/app_b_shadow_widget.dart';
import 'package:math_4_maze/core/view/widgets/custom_app_bar.dart';
import 'package:math_4_maze/core/view/screens/home_value/widgets/questions_container.dart';

class HomeValueScreen extends StatelessWidget {
  const HomeValueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'القيمة المنزلية'),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Shared.width * 0.04,
              vertical: Shared.height * 0.04,
            ),
            child: PracticeContainer(),  // NumbersCategoriesContainer(),
          ),
          SizedBox(height: Shared.height * 0.03),
          QuestionsContainer(),
        ],
      ),
    );
  }


}
