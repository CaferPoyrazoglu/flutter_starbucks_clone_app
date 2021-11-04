import 'package:flutter/material.dart';
import 'package:myapp/theme/theme_data.dart';
import 'custom_headline.dart';

class ListItem extends StatelessWidget {
  final String? baslik;
  final String? aciklama;
  final String? resim;
  final List<String>? butonlar;

  const ListItem(
      {Key? key, this.baslik, this.aciklama, this.resim, this.butonlar})
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
          padding: mainPadding * 1,
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
              if (butonlar!.isNotEmpty)
                Row(
                  children: [
                    for (var i = 0; i < butonlar!.length ~/ 2; i++)
                      butonGetir(butonlar, butonlar!.length ~/ 2, i)
                  ],
                )
            ],
          ),
        )
      ],
    );
  }

  butonGetir(List<String>? butonlar, int butonSayisi, int index) {
    if (index.isOdd) index++;
    return InkWell(
      onTap: () {
        print(butonlar![index + 1].toString());
      },
      child: Padding(
        padding: EdgeInsets.only(top: 12.0, right: 12.0),
        child: Container(
          decoration: BoxDecoration(
              color: colorGreen, borderRadius: BorderRadius.circular(30.0)),
          child: Padding(
            padding: mainPadding * 0.65,
            child: CustomHeadline(
              text: butonlar![index].toString(),
              fSize: 0.6,
              myColor: colorWhite,
            ),
          ),
        ),
      ),
    );
  }
}
