
import 'package:bmi_calculator/styles/app_colors.dart';
import 'package:bmi_calculator/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ResultScreen extends StatefulWidget {
  const ResultScreen({Key? key}) : super(key: key);

  static String routName = " routResultScreen";
  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {



  @override
  Widget build(BuildContext context) {
    double? arguments = ModalRoute.of(context)?.settings.arguments as double;

    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(title: Text("Your Result",
        style: TextStyle(color: Colors.white,fontSize:32,fontWeight: FontWeight.bold),),),
      body: Column(
        children: [
          SizedBox(height:screenHeight * .02),
          Center(
            child: Container(
              height: screenHeight * .76,
              width: screenWidth * .9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: kSecondaryPrimaryColor
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _textWidget(arguments),
                  Text(arguments.toStringAsFixed(2),style: TextStyle(color: Colors.white,
                      fontWeight: FontWeight.bold,fontSize: 32),),
                  _textWidgetTow(arguments)
                ],
              ),
            ),
          ),
          Spacer(),
          CustomButton(screenHeight: screenHeight, text: 'RE-CALCULATE',ontap: (){
            Navigator.pop(context);
          },),
          SizedBox(height: screenHeight * .02)
        ],
      ),
    );
  }

  Widget _textWidget(double bmi){
    String? text ;
    if(bmi <= 23){
     text = "Normal";
    }else{
      text = "UnNormal";
    }
    return Center(child: Text(text??" ",style:  TextStyle(color:text == "UnNormal" ? Colors.red : Colors.green,fontSize: 32,fontWeight: FontWeight.bold),));
  }

  Widget _textWidgetTow(double bmi) {
    String? text ;
    if(bmi <= 23){
      text = "You have normal body weihgt \n Good job";
    }else{
      text = "You have Unormal body weihgt \n Bad job";
    }
    return Center(child: Text(text??" ",style:
    const TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.bold),));
  }

}
