import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/controllers/list_controller.dart';
import 'package:myapp/theme/theme_data.dart';
import 'package:myapp/widgets/custom_headline.dart';
import 'package:myapp/widgets/list_item.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ListController c = Get.put(ListController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,
      body: bodyGetir(),
    );
  }

  bodyGetir() {
    return Column(
      children: [
        SizedBox(
          height: height * 0.02,
        ),
        appBarGetir(),
        listGetir()
      ],
    );
  }

  listGetir() {
    return Expanded(
      child: MediaQuery.removePadding(
        removeTop: true,
        context: this.context,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: c.list.length,
          itemBuilder: (context, index) => ListItem(
            baslik: c.list[index].baslik,
            aciklama: c.list[index].aciklama,
            resim: c.list[index].resim,
            butonlar: c.list[index].butonlar,
          ),
        ),
      ),
    );
  }

  appBarGetir() {
    return Container(
      width: width,
      height: height * 0.14,
      child: Padding(
        padding: mainPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: CustomHeadline(
                text: "İyi Günler ☕",
                fSize: 0.95,
                myFW: FontWeight.w600,
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      butonGetir(
                        "Giriş Yap",
                        Icons.login,
                      ),
                      butonGetir("Gelen Kutusu", Icons.mail),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [Icon(Icons.settings)],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  butonGetir(String butonAdi, IconData icon) {
    return Padding(
      padding: EdgeInsets.only(right: 12.0),
      child: Row(
        children: [
          Icon(
            icon,
            color: colorBlack,
          ),
          SizedBox(
            width: 4,
          ),
          CustomHeadline(
            text: butonAdi,
            fSize: 0.5,
          ),
        ],
      ),
    );
  }
}
