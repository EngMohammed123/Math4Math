import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnimatedCharacters extends StatelessWidget {
  const AnimatedCharacters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // الغزال
          Positioned(
            left: 20.w,
            child: _buildCharacter(
              imagePath: 'assets/images/deer_character.png',
              height: 280.h,
              width: 150.w,
              fallbackIcon: Icons.pets,
              fallbackColor: Colors.brown,
            ),
          ),
          // الراكون
          Positioned(
            right: 10.w,
            bottom: 0,
            child: _buildCharacter(
              imagePath: 'assets/images/raccoon_character.png',
              height: 150.h,
              width: 100.w,
              fallbackIcon: Icons.pets,
              fallbackColor: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCharacter({
    required String imagePath,
    required double height,
    required double width,
    required IconData fallbackIcon,
    required Color fallbackColor,
  }) {
    return Image.asset(
      imagePath,
      height: height,
      errorBuilder: (context, error, stackTrace) {
        return Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: fallbackColor.withOpacity(0.3),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Icon(
            fallbackIcon,
            size: height * 0.3,
            color: fallbackColor,
          ),
        );
      },
    );
  }
}
