import 'package:appointment_app/core/theming/colors.dart';
import 'package:appointment_app/core/theming/styels.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DoctorsSpecialityListView extends StatelessWidget {
  const DoctorsSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsetsDirectional.only(
              start: index == 0 ? 0 : 24,
              end: 0,
            ),

            child: Column(
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundColor: ColorsManager.lightWhite,
                  child: SvgPicture.asset(
                    "assets/svgs/doctor_speciality.svg",
                    height: 40.h,
                    width: 40.w,
                  ),
                ),
                SizedBox(height: 8),
                Text("Neurologist", style: TextStyles.font12DarkBlueRegular),
              ],
            ),
          );
        },
      ),
    );
  }
}
