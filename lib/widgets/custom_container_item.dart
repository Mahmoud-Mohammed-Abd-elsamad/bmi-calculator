import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../styles/app_colors.dart';

class CustomCuntainerItem extends StatefulWidget {
   CustomCuntainerItem({Key? key, required this.screenHeight, required this.screenWidth, required this.title, required this.counter}) : super(key: key);

  final double screenHeight;
  final double screenWidth;
  final String title;
   int counter;

  @override
  State<CustomCuntainerItem> createState() => _CustomCuntainerItemState();
}

class _CustomCuntainerItemState extends State<CustomCuntainerItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.screenHeight * .22,
      width: widget.screenWidth * .4,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        color: kSecondaryPrimaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: widget.screenHeight * .03,
          ),
          Text(widget.title,
              style:
              TextStyle(color: Colors.grey.withOpacity(.7), fontSize: 21)),
          Text("${widget.counter}",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: widget.screenWidth * .06,
          ),
          Row(
            children: [
              SizedBox(
                width:widget. screenWidth * .07,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    print((" weight ${widget.counter} --"));
                    if (widget.counter > 0) {
                      widget.counter --;
                      print((" weighy ${widget.counter} --"));
                    }
                  });
                },
                child: const CircleAvatar(
                  backgroundColor: Color(0xff6e6e7c),
                  radius: 23,
                  child: Column(
                    children: [
                      Icon(
                        Icons.minimize,
                        size: 30,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: widget.screenWidth * .03,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    widget.counter = widget.counter + 1;
                    print((" weighy ${widget.counter} ++"));
                  });
                },
                child: CircleAvatar(
                  backgroundColor: Color(0xff6e6e7c),
                  radius: 23,
                  child: Icon(
                    Icons.add,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
