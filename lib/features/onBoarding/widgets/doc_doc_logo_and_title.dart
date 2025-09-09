import 'package:appointment_app/core/theming/styels.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DocDocLogoAndTitle extends StatelessWidget {
  const DocDocLogoAndTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset("assets/svgs/dodoc_logo.svg"),
        SizedBox(width: 10.w),
        Text("Docdoc", style: TextStyles.font24BlackBold),
      ],
    );
  }
}
