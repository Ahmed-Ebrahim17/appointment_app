import 'package:appointment_app/core/helpers/spacing.dart';
import 'package:appointment_app/core/theming/styels.dart';
import 'package:appointment_app/core/widgets/app_text_button.dart';
import 'package:appointment_app/features/login/data/models/login_request_body.dart';
import 'package:appointment_app/features/login/logic/cubit/login_cubit.dart';
import 'package:appointment_app/features/login/ui%20/%20widgets/dont_have_account.dart';
import 'package:appointment_app/features/login/ui%20/%20widgets/email_and_password.dart';
import 'package:appointment_app/features/login/ui%20/%20widgets/login_bloc_listener.dart';
import 'package:appointment_app/features/login/ui%20/%20widgets/terms_and_condtiton_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome Back", style: TextStyles.font24BlueBold),
                verticalSpace(8),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: TextStyles.font14RegularGrey,
                ),
                verticalSpace(36),
                Column(
                  children: [
                    EmailAndPassword(),
                    verticalSpace(24),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        "Forget Password?",
                        style: TextStyles.font14BlueRegular,
                      ),
                    ),
                    verticalSpace(36),
                    AppTextButton(
                      buttonText: "Login",
                      textStyle: TextStyles.font16WhiteSemiBold,
                      onpressed: () {
                        listenAndLoginIn(context);
                      },
                    ),
                    verticalSpace(16),

                    TermsAndCondtitonText(),
                    verticalSpace(60),
                    DontHaveAccount(),
                    LoginBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void listenAndLoginIn(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates(
        LoginRequestBody(
          email: context.read<LoginCubit>().emailController.text,
          password: context.read<LoginCubit>().passwordController.text,
        ),
      );
    }
  }
}
