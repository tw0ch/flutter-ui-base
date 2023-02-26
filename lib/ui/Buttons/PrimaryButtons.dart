import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';

import '../../services/ColorService.dart';
import '../../services/GradientService.dart';


//Gradient PrimaryButton from NaSlet mobile app (https://github.com/na-slet/mobile-app)
class PrimaryButton extends StatelessWidget {
  final colorService = Injector().get<ColorService>();

  final double height;
  final String? title;
  final LinearGradient gradient;
  final TextStyle? textStyle;
  final VoidCallback? onTap;
  final bool enabled;
  final Widget? child;

  PrimaryButton({
    Key? key,
    this.height = 45,
    this.onTap,
    this.title,
    required this.gradient,
    this.textStyle,
    this.enabled = true,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GradinetLeftToRight(
      blendMode: BlendMode.color,
      color: enabled ? gradient : colorService.inactiveGradient(),
      child: Center(
        child: Container(
          height: height,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: enabled ? onTap : null,
              borderRadius: BorderRadius.circular(5),
              child: Center(
                child: child ?? Text(
                  title!,
                  style: textStyle,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}