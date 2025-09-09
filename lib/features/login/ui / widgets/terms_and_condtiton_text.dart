import 'package:flutter/material.dart';

import '../../../../core/theming/styels.dart';

class TermsAndCondtitonText extends StatelessWidget {
  const TermsAndCondtitonText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our',
            style: TextStyles.font13GreyRegular,
          ),
          TextSpan(
            text: " Terms & Conditions",
            style: TextStyles.font13DarkBlueMedium,
          ),
          TextSpan(
            text: "\n and",
            style: TextStyles.font13GreyRegular.copyWith(height: 1.5),
          ),
          TextSpan(
            text: " PrivacyPolicy",
            style: TextStyles.font13DarkBlueMedium,
          ),
        ],
      ),
    );
  }
}
