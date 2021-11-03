import 'package:flutter/material.dart';
import 'package:myapp/theme/theme_data.dart';
import 'custom_headline.dart';

class ListItem extends StatelessWidget {
  final String? baslik;
  final String? aciklama;
  final String? resim;

  const ListItem({Key? key, this.baslik, this.aciklama, this.resim})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          child: Image.asset(
            resim!,
            fit: BoxFit.fitWidth,
          ),
        ),
        Padding(
          padding: mainPadding * 0.6,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomHeadline(
                text: baslik!,
                fSize: 0.7,
                myFW: FontWeight.w600,
              ),
              CustomHeadline(
                text: aciklama!,
                fSize: 0.6,
                myFW: FontWeight.w400,
              ),
            ],
          ),
        )
      ],
    );
  }
}
