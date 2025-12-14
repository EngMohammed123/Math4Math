import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/assets.dart';
import '../widgets/app_screen.dart';
import '../widgets/custom_button.dart';
import '../widgets/image_loader.dart';
import 'learning_screen.dart';
import 'walkthrough.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  static const id = '/';

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with TickerProviderStateMixin {
  int endPointsCalled = 0;
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _setupAnimations();
    callAllEndpoints();
  }

  void _setupAnimations() {
    _animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.3),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOutBack,
    ));

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppScreen(
      lightStatusBar: true,
      child: Stack(
        children: [
          // Background image
          LocalImageLoader(
            asset: Assets.splashBackground,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          // Content
          SafeArea(
            child: Column(
              children: [
                // Top title
                Container(
                  alignment: AlignmentDirectional.topStart,
                  padding: EdgeInsets.only(top: 40.h, left: 20.w, right: 20.w),
                  child: FadeTransition(
                    opacity: _fadeAnimation,
                    child: Text(
                      'مستخدم جديد',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.rakkas(
                        fontSize: 22.sp,
                        // fontWeight: FontWeight.bold,
                        color: const Color(0xFF2D5AA0),
                      ),
                    ),
                  ),
                ),

                const Spacer(),

                // Buttons section
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.w),
                  child: SlideTransition(
                    position: _slideAnimation,
                    child: FadeTransition(
                      opacity: _fadeAnimation,
                      child: Column(
                        children: [
                          // Login button (golden)
                          CustomButton(
                            text: 'تسجيل الدخول',
                            backgroundColor: const Color(0xFFFFD700),
                            textColor: const Color(0xFF2D5AA0),
                            onPressed: () {
                              // Handle login
                            },
                          ),

                          SizedBox(height: 16.h),

                          // Start learning button (blue)
                          CustomButton(
                            text: 'بدء التعلم',
                            backgroundColor: const Color(0xFF1E90FF),
                            textColor: Colors.white,
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, LearningScreen.id);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 50.h),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void navigateToNextScreen() {
    // if (signedInUser) {
    //   Navigator.pushReplacementNamed(context, HomeScreen.id);
    // } else {
    Navigator.pushReplacementNamed(context, WalkthroughScreen.id);
    // preferences.setBool('walkthroughScreenShown', true);
    // }
  }

  void callAllEndpoints() {
    // FlutterBranchSdk.getLatestReferringParams().then((value) {
    //   print(value.isEmpty);
    //   navigateToNextScreen();
    // }).catchError((error) {
    //   print(error);
    // });

    // endPointsCalled = 0;
    // Future.delayed(const Duration(seconds: 4)).then((value) {
    //   endPointsCalled = 1;
    //   navigateToNextScreen();
    // });
    // context.read<ConstantsCubit>().constants();
    // context.read<CategoriesCubit>().reload();
    // context.read<HomeCubit>().home();

    Future.delayed(const Duration(seconds: 4)).then((value) {
      // navigateToNextScreen();
    });
  }
}
