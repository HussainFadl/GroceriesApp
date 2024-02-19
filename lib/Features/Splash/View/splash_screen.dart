import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceries/Core/AppColors/colors.dart';
import 'package:groceries/Core/Util/AppFunctions/app_functions.dart';
import 'package:groceries/Core/Util/AppImages/app_images.dart';
import 'package:groceries/Features/OnBoarding/onBoarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 1),
      () {
        Appfunctions.navigatingToNextScreen(
            context: context, navigatedScreen: const OnBoardingScreen());
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
      ),
      backgroundColor: AppColors.mainColor,
      body: Stack(children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppImages.nectarLogo),
                  Text(
                    'nectar',
                    style: GoogleFonts.glory(
                        backgroundColor: AppColors.mainColor,
                        fontSize: 50,
                        color: Colors.white),
                  ),
                ],
              ),
              Text(
                'online groceriet',
                style: GoogleFonts.glory(
                    backgroundColor: AppColors.mainColor,
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w100),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
