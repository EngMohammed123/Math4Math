import 'package:flutter/material.dart';

class AppBShadowWidget extends StatelessWidget {
  final Widget child;
  final double blurRadius;
  final double spreadRadius;
  final Color? color;
  final Color? shadowColor;
  final double? width;

  const AppBShadowWidget({
    Key? key,
    required this.child,
    this.blurRadius = 10.0,
    this.spreadRadius = 0.0,
    this.color,
    this.shadowColor,
    this.width = double.infinity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: color ?? Theme.of(context).colorScheme.primary, // Light cyan
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: shadowColor ??
                Theme.of(context).colorScheme.shadow, // Default shadow color
            offset: const Offset(0, 4),
            blurRadius: 0,
          ),
        ],
      ),
      child: child,
    );
  }
}
