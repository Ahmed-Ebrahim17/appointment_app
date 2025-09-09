import 'package:appointment_app/core/theming/styels.dart';
import 'package:appointment_app/features/onBoarding/widgets/doc_doc_logo_and_title.dart';
import 'package:appointment_app/features/onBoarding/widgets/docor_image_and_text.dart';
import 'package:appointment_app/features/onBoarding/widgets/get_started_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                DocDocLogoAndTitle(),
                SizedBox(height: 32.h),
                DoctorImageAndText(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    children: [
                      Text(
                        "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                        textAlign: TextAlign.center,
                        style: TextStyles.font13GreyRegular,
                      ),
                      SizedBox(height: 30.h),
                      GetStartedButton(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
