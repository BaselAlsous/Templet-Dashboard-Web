import 'package:flutter/material.dart';
import 'package:templete/Data/Constant/icon/app_icons.dart';
import 'package:templete/Data/Constant/theme/color_constant.dart';
import 'package:templete/Data/Functions/navigation.dart';
import 'package:templete/Data/Functions/web_responsive.dart';
import 'package:templete/Presintaions/Components/custom_button.dart';
import 'package:templete/Presintaions/Components/custom_text_field.dart';
import 'package:templete/Presintaions/dashboard_screen.dart';

class SignScreenScreen extends StatefulWidget {
  const SignScreenScreen({super.key});

  @override
  State<SignScreenScreen> createState() => _SignScreenScreenState();
}

class _SignScreenScreenState extends State<SignScreenScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WebResponsive(
          mobile: SizedBox(), tablet: SignIn(), desktop: SignIn()),
    );
  }
}

class SignIn extends StatelessWidget {
  const SignIn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            color: AppColors.primaryColor,
            child: const Center(
              child: Text(
                'AdminExpress',
                style: TextStyle(
                  fontSize: 50,
                  color: AppColors.whiteColor1,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(70.0),
            child: Center(
              child: SizedBox(
                width: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Let\'s Sign In',
                          style: TextStyle(
                            fontSize: 35,
                            color: AppColors.blackColor1,
                          ),
                        ),
                        const SizedBox(width: 5),
                        SizedBox(
                          width: 40,
                          height: 40,
                          child: AppIcons.hand,
                        )
                      ],
                    ),
                    const SizedBox(height: 8),
                    const SizedBox(
                      width: 260,
                      child: Text(
                        'Hi , Enter Your Details To Get Sign In To Your Account',
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColors.darkGreyColor,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      'Email',
                      style: TextStyle(
                        fontSize: 15,
                        color: AppColors.blackColor1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const SizedBox(
                      width: 500,
                      height: 100,
                      child: CustomTextField(
                        'Email',
                        prefixIcon: Icon(Icons.email),
                      ),
                    ),
                    const Text(
                      'Password',
                      style: TextStyle(
                        fontSize: 15,
                        color: AppColors.blackColor1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const SizedBox(
                      width: 500,
                      height: 100,
                      child: CustomTextField(
                        'Password',
                        prefixIcon: Icon(Icons.lock),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomButton(
                          w: 160,
                          h: 60,
                          t: 20,
                          title: 'Sign In',
                          onTap: () {
                            Navigator.pushAndRemoveUntil(
                                context,
                                rightToLeft(const DashboardScreen()),
                                (route) => false);
                          },
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
