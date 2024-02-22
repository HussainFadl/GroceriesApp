import 'package:flutter/material.dart';
import 'package:groceries/Core/AppColors/colors.dart';

class CustomedText extends StatefulWidget {
  const CustomedText({super.key});

  @override
  State<CustomedText> createState() => _CustomedTextState();
}

class _CustomedTextState extends State<CustomedText> {
  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
