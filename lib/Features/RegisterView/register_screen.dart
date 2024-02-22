import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceries/Core/AppColors/colors.dart';
import 'package:groceries/Core/Util/AppFunctions/app_functions.dart';
import 'package:groceries/Core/Util/AppImages/app_images.dart';
import 'package:groceries/Core/Util/PasswordFormFieldTextWidgets/password_text_form_field_widget.dart';
import 'package:groceries/Core/Util/TextFormFieldforEmail/text_form_field_email.dart';
import 'package:groceries/Core/Util/TextFormFieldforUserName/text_form_field_for_username.dart';
import 'package:groceries/Core/Util/Widgets/ButtonWidgets/app_Buttons.dart';
import 'package:groceries/Features/BottomNavBar/ViewBottomNavBar/bottom_nav_bar_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                    child: Image(image: AssetImage(AppImages.coloredCarrot))),
                const SizedBox(
                  height: 100,
                ),
                const Text(
                  'Sign Up',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
                const Text(
                  'Enter your credential to continue',
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(height: 10),
                const TextFormFieldforUserName(),
                const TextFormFieldforEmail(),
                const PassWordTestFormField(),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'By continuing you agree to our ',
                        style: GoogleFonts.glory(fontWeight: FontWeight.w300),
                      ),
                      Text(
                        'Terms of Service',
                        style: GoogleFonts.glory(
                            fontWeight: FontWeight.w600,
                            color: AppColors.mainColor,
                            fontSize: 13),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'and ',
                      style: GoogleFonts.glory(fontWeight: FontWeight.w300),
                    ),
                    Text(
                      'Privacy Policy.',
                      style: GoogleFonts.glory(
                          fontWeight: FontWeight.bold,
                          color: AppColors.mainColor),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                AppButtons(
                  text: 'Log In',
                  onTap: () {
                    Appfunctions.navigatingToNextScreen(
                        context: context,
                        navigatedScreen: const BottomNavBarScreen());
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text('Already have an account?',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(width: 30),
                    Text(
                      'Sign Up',
                      style: TextStyle(
                          color: AppColors.mainColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
