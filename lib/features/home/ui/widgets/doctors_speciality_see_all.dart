import 'package:appointment_app/core/theming/styels.dart';
import 'package:flutter/material.dart';

class DoctorsSpecialitySeeAll extends StatelessWidget {
  const DoctorsSpecialitySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Doctor Speciality", style: TextStyles.font18BlackSemiBold),
        Spacer(),
        Text("See All", style: TextStyles.font12RegularBlue),
      ],
    );
  }
}
