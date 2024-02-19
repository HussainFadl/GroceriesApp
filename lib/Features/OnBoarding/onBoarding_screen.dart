import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceries/Core/AppColors/colors.dart';
import 'package:groceries/Core/Util/AppFunctions/app_functions.dart';
import 'package:groceries/Core/Util/AppImages/app_images.dart';
import 'package:groceries/Core/Util/Widgets/ButtonWidgets/app_Buttons.dart';
import 'package:groceries/Features/LogIn/View/Login_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: SafeArea(
          child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.fill,
              image: Image.asset(
                AppImages.smartSeller,
              ).image,
            )),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 250,
                ),
                const Image(
                  image: AssetImage(
                    AppImages.nectarLogo,
                  ),
                ),
                Text(
                  '  Welcome \nto our store',
                  style: GoogleFonts.glory(
                      fontSize: 35,
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
                ),
                Text(
                  'Get your groceries in as fast as one hour',
                  style: GoogleFonts.glory(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
                ),
                const SizedBox(height: 50),
                AppButtons(
                    onTap: () {
                      Appfunctions.navigatingToNextScreen(
                          context: context,
                          navigatedScreen: const LogInScreen());
                    },
                    text: 'Get Started'),
                const SizedBox(
                  height: 50,
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
