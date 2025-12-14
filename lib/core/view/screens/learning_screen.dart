import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:math_4_maze/core/view/screens/home_screen.dart';
import 'package:math_4_maze/core/view/widgets/app_b_shadow_widget.dart';

import '../../constants/assets.dart';
import '../widgets/app_screen.dart';
import '../widgets/custom_button.dart';
import '../widgets/image_loader.dart';

class LearningScreen extends StatefulWidget {
  const LearningScreen({Key? key}) : super(key: key);

  static const id = '/learning-screen';

  @override
  State<LearningScreen> createState() => _LearningScreenState();
}

class _LearningScreenState extends State<LearningScreen>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  var studientCodeController = TextEditingController();

  var passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _setupAnimations();
  }

  void _setupAnimations() {
    _animationController = AnimationController(
      duration: const Duration(seconds: 1, milliseconds: 500),
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
                Padding(
                  padding: EdgeInsets.only(top: 30.h),
                  child: FadeTransition(
                    opacity: _fadeAnimation,
                    child: Text(
                      'مرحباً بك في مغامرة التعلم',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.rakkas(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF2D5AA0),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: .33.sh),

                // Buttons section
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    child: SlideTransition(
                      position: _slideAnimation,
                      child: FadeTransition(
                        opacity: _fadeAnimation,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // Start Learning Button (Blue)
                            AppBShadowWidget(
                              shadowColor: const Color(0xFF1396F1),
                              color: const Color(0xFF00BBFF),
                              child: Container(
                                  width: .5.sw,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 20.w,
                                    vertical: 18.h,
                                  ),
                                  child: Text('بدء التعلم',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.rakkas(
                                        fontSize: 18.sp,
                                        color: Colors.white,
                                      ))),
                            ),
                            SizedBox(height: 10.h),

                            AppBShadowWidget(
                              color: const Color(0xFFD2F9FF),
                              shadowColor: const Color(0xFFB3E9F1),
                              child: TextField(
                                controller: studientCodeController,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.rakkas(
                                  fontSize: 16.sp,
                                  color: const Color(0xFF2D5AA0),
                                  fontWeight: FontWeight.w500,
                                ),
                                decoration: InputDecoration(
                                  hintText: 'كود الطالب',
                                  hintStyle: GoogleFonts.rakkas(
                                    fontSize: 14.sp,
                                    color: Colors.grey.shade500,
                                  ),
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 20.w,
                                    vertical: 15.h,
                                  ),
                                ),
                              ),
                            ),

                            AppBShadowWidget(
                                color: const Color(0xFFD2F9FF),
                                shadowColor: const Color(0xFFB3E9F1),
                                child: TextField(
                                  controller: passwordController,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.rakkas(
                                    fontSize: 16.sp,
                                    color: const Color(0xFF2D5AA0),
                                    fontWeight: FontWeight.w500,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: 'كلمة المرور',
                                    hintStyle: GoogleFonts.rakkas(
                                      fontSize: 14.sp,
                                      color: Colors.grey.shade500,
                                    ),
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 20.w,
                                      vertical: 15.h,
                                    ),
                                  ),
                                )),

                            AppBShadowWidget(
                              color: const Color(0xFFFFF061),
                              shadowColor: const Color(0xFFFFDB24),
                              child: TextButton(
                                onPressed: _handleStartLearning,
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 15.h,
                                    horizontal: 20.w,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                                child: Text(
                                  'تسجيل الدخول',
                                  style: GoogleFonts.rakkas(
                                    fontSize: 16.sp,
                                    color: const Color(0xFF2D5AA0),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),

                            // Buttons Row
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20.h),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _handleStartLearning() {
    // Navigate to learning modules
    // print('Start Learning pressed');

    Navigator.pushAndRemoveUntil(
        context, MaterialPageRoute(
      builder: (context) => HomeScreen(),
    ), (route) => false);

    // You can navigate to your learning modules screen here
  }

  void _handleTeacherPassword() {
    // Show teacher password dialog
    print('Teacher Password pressed');
    _showTeacherPasswordDialog();
  }

  void _handleSettings() {
    // Navigate to settings screen
    print('Settings pressed');
  }

  void _handleExit() {
    // Navigate back to splash or show exit confirmation
    print('Exit pressed');
    Navigator.pop(context);
  }

  void _showTeacherPasswordDialog() {
    final TextEditingController controller = TextEditingController();

    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          child: Container(
            padding: EdgeInsets.all(20.w),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color(0xFF87CEEB).withOpacity(0.9),
                  const Color(0xFF98FB98).withOpacity(0.9),
                  const Color(0xFFFFF8DC).withOpacity(0.9),
                ],
                stops: const [0.0, 0.5, 1.0],
              ),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Title
                Text(
                  'كلمة مرور المعلم',
                  style: GoogleFonts.rakkas(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF2D5AA0),
                  ),
                ),

                SizedBox(height: 30.h),

                // Enhanced Password Field
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: TextField(
                    controller: controller,
                    obscureText: true,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.rakkas(
                      fontSize: 16.sp,
                      color: const Color(0xFF2D5AA0),
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: InputDecoration(
                      hintText: 'أدخل كلمة المرور',
                      hintStyle: GoogleFonts.rakkas(
                        fontSize: 14.sp,
                        color: Colors.grey.shade500,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: const BorderSide(
                          color: Color(0xFF2D5AA0),
                          width: 2,
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 20.w,
                        vertical: 15.h,
                      ),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.9),
                      suffixIcon: Icon(
                        Icons.lock_outline,
                        color: Colors.grey.shade400,
                        size: 20.sp,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 30.h),

                // Buttons Row
                Row(
                  children: [
                    // Cancel Button
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: TextButton(
                          onPressed: () => Navigator.pop(context),
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.symmetric(vertical: 12.h),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: Text(
                            'إلغاء',
                            style: GoogleFonts.rakkas(
                              fontSize: 16.sp,
                              color: Colors.grey.shade700,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 15.w),

                    // Confirm Button
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFF4A90E2),
                              Color(0xFF1E90FF),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xFF4A90E2).withOpacity(0.3),
                              blurRadius: 8,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: TextButton(
                          onPressed: () {
                            // Handle teacher password submission
                            String password = controller.text.trim();
                            if (password.isNotEmpty) {
                              // Process the teacher password
                              print('Teacher password entered: $password');
                              Navigator.pop(context);
                              // You can add your logic here to handle the teacher password
                            }
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.symmetric(vertical: 12.h),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: Text(
                            'تأكيد',
                            style: GoogleFonts.rakkas(
                              fontSize: 16.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

// Custom painter for deer antlers
class AntlersPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.brown.shade800
      ..strokeWidth = 3.0
      ..style = PaintingStyle.stroke;

    final path = Path();

    // Left antler
    path.moveTo(size.width * 0.3, size.height * 0.8);
    path.lineTo(size.width * 0.1, size.height * 0.2);
    path.moveTo(size.width * 0.15, size.height * 0.4);
    path.lineTo(size.width * 0.05, size.height * 0.1);
    path.moveTo(size.width * 0.25, size.height * 0.5);
    path.lineTo(size.width * 0.15, size.height * 0.3);

    // Right antler
    path.moveTo(size.width * 0.7, size.height * 0.8);
    path.lineTo(size.width * 0.9, size.height * 0.2);
    path.moveTo(size.width * 0.85, size.height * 0.4);
    path.lineTo(size.width * 0.95, size.height * 0.1);
    path.moveTo(size.width * 0.75, size.height * 0.5);
    path.lineTo(size.width * 0.85, size.height * 0.3);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

// Custom painter for deer smile
class SmilePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke;

    final path = Path();
    path.moveTo(0, size.height * 0.3);
    path.quadraticBezierTo(
      size.width * 0.5,
      size.height,
      size.width,
      size.height * 0.3,
    );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
