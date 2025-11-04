import 'package:appointment_app/core/helpers/extensons.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/styels.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "Dont have an account yet?",
            style: TextStyles.font13DarkBlueRegular,
          ),
          TextSpan(
            text: " Sign Up ",
            style: TextStyles.font13BlueSemiBold,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.puhsReplacementNamed(Routes.signUpScreen);
              },
          ),
        ],
      ),
    );
  }
}
