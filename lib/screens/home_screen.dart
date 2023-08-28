import 'dart:math';

import 'package:bmi_calculator/styles/app_colors.dart';
import 'package:bmi_calculator/screens/result_screen.dart';
import 'package:bmi_calculator/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_container_item.dart';
import '../widgets/custom_gender_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static String routName = " routHomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double sliderValue = 150;
  int weightCounter = 40;
  int edgeCounter = 15;
  double BMI = 0;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;

    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          "BMI CALCULATOR",
          style: TextStyle(
              color: Colors.white, fontSize: 21, fontWeight: FontWeight.bold),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Row(
            children: [
              CustomGenderButton(
                  icon: Icons.male, text: 'MALE', screenHight: screenHeight, screenWidth: screenWidth,),
              SizedBox(
                width: screenWidth * .1,
              ),
              CustomGenderButton(
                icon: Icons.female, text: 'FEMALE', screenHight: screenHeight, screenWidth: screenWidth,),
            ],
          ),
          SizedBox(
            height: screenHeight * .03,
          ),
          Container(
            height: screenHeight * .22,
            width: screenWidth * .9,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              color: kSecondaryPrimaryColor,
            ),
            child: _customSlider(screenHeight),
          ),
          SizedBox(
            height: screenHeight * 0.03,
          ),
          Row(
            children: [
              CustomCuntainerItem(
                screenHeight: screenHeight,
                screenWidth: screenWidth,
                title: "WEIGHT",
                counter: weightCounter,
              ),
              SizedBox(
                width: screenWidth * .1,
              ),
              CustomCuntainerItem(
                screenHeight: screenHeight,
                screenWidth: screenWidth,
                title: "AGE",
                counter: edgeCounter,
              ),
            ],
          ),
          Spacer(),
          CustomButton(
            screenHeight: screenHeight,
            ontap: () {
              BMI = weightCounter / pow(sliderValue / 100, 2);
              print(" BMI = $BMI");
              Navigator.pushNamed(context, ResultScreen.routName,
                  arguments: BMI);
            },
            text: 'CALCULATE',
          )
        ]),
      ),
    );
  }

  Widget _customSlider(double screenHeighy) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "HEIGHT",
          style: TextStyle(fontSize: 18, color: Colors.grey.withOpacity(.3)),
        ),
        SizedBox(
          height: screenHeighy * .01,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Center(
                child: Text(
              "$sliderValue",
              style: const TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )),
            Text(
              "cm",
              style: TextStyle(color: Colors.grey.withOpacity(.7)),
            )
          ],
        ),
        SizedBox(
          height: screenHeighy * .01,
        ),
        Slider(
            activeColor: Colors.white,
            inactiveColor: Colors.grey,
            thumbColor: Colors.red,
            value: sliderValue,
            max: 200,
            min: 20,
            divisions: 36,
            label: sliderValue.round().toString(),
            onChanged: (value) {
              sliderValue = value;
              setState(() {});
            }),
      ],
    );
  }


}
