
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   const CustomButton ({Key? key,required double this.screenHeight, this.ontap, required this.text}) : super(key: key);
  final double screenHeight ;
  final String text;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,

child: Container(
width: double.infinity,
height: screenHeight * .08,
decoration: BoxDecoration(
color: Colors.red,
borderRadius: BorderRadius.only(bottomRight:Radius.circular(30) ,bottomLeft: Radius.circular(30))
),

child: Center(child: Text(text,style: TextStyle(fontSize: 28,color: Colors.white,fontWeight: FontWeight.bold),)),
),
);
}
  }

