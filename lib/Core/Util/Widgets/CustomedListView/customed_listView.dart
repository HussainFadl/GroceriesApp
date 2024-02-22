import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceries/Core/AppColors/colors.dart';
import 'package:groceries/Core/Util/AppFunctions/app_functions.dart';
import 'package:groceries/Features/Single%20Product/single_product_screen.dart';

class CustomedListView extends StatefulWidget {
  const CustomedListView({super.key});

  @override
  State<CustomedListView> createState() => _CustomedListViewState();
}

class _CustomedListViewState extends State<CustomedListView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 350,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(10),
            width: 200,
            height: 350,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 0.5, color: AppColors.greyColor)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(
                  'https://img.freepik.com/premium-photo/studio-shot-bananas-bunch-isolated-white-background_220507-22658.jpg',
                  height: 170,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Organic Banans ',
                      style: GoogleFonts.glory(
                          fontWeight: FontWeight.bold, fontSize: 18),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      '7 pcs, Priceg',
                      style: GoogleFonts.glory(
                          fontSize: 13, color: AppColors.greyColor),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        '\$4.99',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.mainColor,
                            borderRadius: BorderRadius.circular(15)),
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                                Appfunctions.navigatingToNextScreen(
                                    context: context,
                                    navigatedScreen: const SingleProduct());
                              });
                            },
                            icon: const Icon(
                              Icons.add,
                              color: Colors.white,
                            )),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
