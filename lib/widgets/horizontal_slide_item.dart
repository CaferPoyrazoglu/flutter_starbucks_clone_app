import 'package:flutter/material.dart';
import 'package:myapp/theme/theme_data.dart';
import 'custom_headline.dart';

class HorizontalSlideItem extends StatelessWidget {
  final String? name;
  final String? image;

  const HorizontalSlideItem({Key? key, this.name, this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              image!,
              fit: BoxFit.cover,
              width: width * 0.5,
              height: height * 0.22,
            ),
          ),
          CustomHeadline(
            text: name!,
            fSize: 0.7,
            myColor: colorWhite,
            myFW: FontWeight.w600,
            myTa: TextAlign.start,
          )
        ],
      ),
    );
  }
}
