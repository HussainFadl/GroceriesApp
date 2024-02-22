import 'package:cached_network_image/cached_network_image.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceries/Core/AppColors/colors.dart';
import 'package:groceries/Core/Util/AppImages/app_images.dart';
import 'package:groceries/Core/Util/Widgets/CustomedListView/customed_listView.dart';

List<String> myList = ([
  'https://img.freepik.com/free-photo/flat-lay-bunch-fresh-provisions-donation_23-2148733838.jpg',
  'https://img.freepik.com/free-photo/basket-full-vegetables_1112-316.jpg',
  'https://img.freepik.com/free-photo/shopping-cart-full-with-groceries-dark-backgrounds_1268-29511.jpg'
]);

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              AppImages.coloredCarrot,
              width: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.location_on),
                Text('Dhaka, Banasre',
                    style: GoogleFonts.glory(
                        fontSize: 20, fontWeight: FontWeight.w500)),
              ],
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                  //contentPadding: EdgeInsets.zero,
                  filled: true,
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Search Store',
                  hintStyle: TextStyle(color: Colors.grey[400]),
                  fillColor: AppColors.tffColor,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none)),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: Swiper(
                // autoplay: true,
                // duration: 1,
                itemCount: 3,
                itemBuilder: (context, index) => CachedNetworkImage(
                  imageUrl:
                      'https://img.freepik.com/free-photo/shopping-cart-full-with-groceries-dark-backgrounds_1268-29511.jpg',
                  placeholder: (context, url) =>
                      const Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) =>
                      const Center(child: Text('NetWork error')),
                ),
                pagination: SwiperPagination(
                    alignment: Alignment.bottomCenter,
                    builder: DotSwiperPaginationBuilder(
                        color: Colors.grey, activeColor: AppColors.mainColor)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Exclusive Offer',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'See all',
                    style: TextStyle(color: AppColors.mainColor, fontSize: 17),
                  ),
                )
              ],
            ),
            const CustomedListView(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Best Selling',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'See all',
                    style: TextStyle(color: AppColors.mainColor, fontSize: 17),
                  ),
                ),
              ],
            ),
            const CustomedListView(),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Groceries',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'See all',
                        style:
                            TextStyle(color: AppColors.mainColor, fontSize: 17),
                      ),
                    ),
                  ],
                ),
                const CustomedListView(),
                const CustomedListView()
              ],
            )
          ],
        ),
      ),
    ));
  }
}
