import 'package:flutter/material.dart';

import '../../../../core/theming/styels.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "Already have an account yet",
            style: TextStyles.font13DarkBlueRegular,
          ),
          TextSpan(text: " Sign Up ", style: TextStyles.font13BlueSemiBold),
        ],
      ),
    );
  }
}
