import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceries/Core/AppColors/colors.dart';
import 'package:groceries/Core/Util/AppImages/app_images.dart';
import 'package:groceries/Core/Util/PasswordFormFieldTextWidgets/password_text_form_field_widget.dart';
import 'package:groceries/Core/Util/Widgets/ButtonWidgets/app_Buttons.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  //bool showPassword = is ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                    child: Image(image: AssetImage(AppImages.coloredCarrot))),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'LogIn',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
                const Text(
                  'Enter your Email and Password',
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(height: 40),
                TextFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(5),
                    label: const Text(
                      'Email',
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                    hintText: 'imshuvo97@gmail.com',
                    hintStyle: GoogleFonts.aBeeZee(),
                  ),
                ),
                const PassWordTestFormField(),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Forget password?'),
                  ],
                ),
                const SizedBox(height: 30),
                AppButtons(
                  text: 'Log In',
                  onTap: () {},
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Don\'t have an account ?',
                      style: GoogleFonts.glory(fontWeight: FontWeight.w300),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Text(
                      'Sign Up',
                      style: GoogleFonts.glory(
                          fontWeight: FontWeight.bold,
                          color: AppColors.mainColor),
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
