import 'package:appointment_app/core/theming/styels.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset("assets/svgs/docdoc_logo_low_opacity.svg"),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.white.withValues(alpha: 0.0)],
              stops: [0.14, 0.4],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          child: Image.asset("assets/images/onboarding_doctor_image.png"),
        ),
        Positioned(
          bottom: 30,
          right: 0,
          left: 0,
          child: Text(
            textAlign: TextAlign.center,
            "Best Doctor \n Appointment App",
            style: TextStyles.font32BlueBold.copyWith(height: 1.4),
          ),
        ),
      ],
    );
  }
}
