import 'package:flutter/material.dart';
import 'package:math_4_maze/core/utils/shared.dart';
import 'package:math_4_maze/core/view/widgets/app_b_shadow_widget.dart';

class QuestionsContainer extends StatefulWidget {
  const QuestionsContainer({super.key});

  @override
  State<QuestionsContainer> createState() => _QuestionsContainerState();
}

class _QuestionsContainerState extends State<QuestionsContainer> {
  int selectedIndex = -1;
  int? resultIndex;

  final List<String> options = [
    "العشرات",
    "آحاد الألوف",
    "المئات",
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Shared.width * 0.06,
            vertical: Shared.height * 0.04,
          ),
          child: Container(
            width: 350,
            padding: const EdgeInsets.only(top: 70, bottom: 40),
            // space for question
            decoration: BoxDecoration(
              color: const Color(0xff3e84c4),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Column(
              children: List.generate(
                options.length,
                    (index) => Column(
                  children: [
                    optionItem(
                      text: options[index],
                      isSelected: selectedIndex == index,
                      onTap: () {
                        setState(() {
                          resultIndex = index;
                          selectedIndex = index;
                        });
                      },
                    ),
                    const SizedBox(height: 15),
                  ],
                ),
              ),
            )
          ),
        ),
        Positioned(
          top: -5,
          left: 0,
          right: 0,
          child: Center(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 15,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.15),
                    blurRadius: 8,
                  ),
                ],
              ),
              child: const Text(
                "في أي منزلة يقع الرقم 7؟",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: -30,
          left: 0,
          right: 0,
          child: GestureDetector(
            onTap: () {
              showCelebrationDialog(context);
            },
            child: Container(
              width: 350,
              padding: const EdgeInsets.symmetric(vertical: 18),
              decoration: BoxDecoration(
                color: selectedIndex == resultIndex ? const Color(0xff44d15a) : const Color(0xff32b9f5),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Center(
                child: Text(
                  selectedIndex == resultIndex ? "متابعة" : "لا أعلم الإجابة" ,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

// ===== Option Widget =====
  Widget optionItem({
    required String text,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Shared.width * 0.03),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            Expanded(
              flex: 5,
              child: SizedBox(
                height: Shared.height * 0.08,
                child: AppBShadowWidget(
                  shadowColor: isSelected ? const Color(0xff1da635) :
                  Color(0xFF00BBFF),
                  color: isSelected ? const Color(0xff44d15a) : Colors.white,
                  child: Expanded(
                    child: Center(
                      child: Text(
                        text,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: isSelected
                              ? Colors.white
                              : const Color(0xFF1396F1),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                height: Shared.height * 0.04,
                decoration: BoxDecoration(
                  color: isSelected ? const Color(0xff44d15a) : const Color(0xffd6ebf7),
                  shape: BoxShape.circle,
                ),
                child: isSelected
                    ? const Icon(Icons.check, color: Colors.white, size: 20)
                    : null,
              ),
            )
          ],
        ),
      ),
    );
  }

  void showCelebrationDialog(BuildContext context) {
    showDialog(
      barrierColor: Colors.black.withOpacity(0.4), // dim background
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return Center(
          child: TweenAnimationBuilder<double>(
            tween: Tween(begin: 0, end: 1),
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeOutBack,
            builder: (context, value, child) {
              return Transform.scale(
                scale: value,
                child: child,
              );
            },
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Background white glow
                Container(
                  width: 220,
                  height: 220,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.3),
                    shape: BoxShape.circle,
                  ),
                ),

                // ⭐ Your star image with confetti
                Image.asset(
                  "assets/images/images2.jpg", // <-- put YOUR image path here
                  width: 220,
                  height: 220,
                ),
              ],
            ),
          ),
        );
      },
    );

    // Auto close after 1.5s
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pop(context);
    });
  }


}
