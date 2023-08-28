import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../styles/app_colors.dart';

class CustomGenderButton extends StatelessWidget {
  const CustomGenderButton({Key? key, required this.screenHight, required this.screenWidth, required this.icon, required this.text}) : super(key: key);
  final double screenHight;
  final double screenWidth;
  final IconData icon;
  final String text;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHight * .22,
      width: screenWidth * .4,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        color: kSecondaryPrimaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: screenHight * .04,
          ),
          Icon(
            icon,
            size: 80,
            color: Colors.white,
          ),
          SizedBox(
            height:
            screenHight* .001,
          ),
          Center(
              child: Text(
                text,
                style: TextStyle(color: Colors.grey.withOpacity(.3), fontSize: 28),
              ))
        ],
      ),
    );
  }
}
