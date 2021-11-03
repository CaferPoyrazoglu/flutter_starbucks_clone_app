class ListModel {
  String baslik;
  String aciklama;
  String resim;

  ListModel(this.baslik, this.aciklama, this.resim);
}

class ListData {
  List<ListModel> listeGetir() {
    return <ListModel>[
      ListModel(
        'Yılbaşı içecekleriniz bugünden hazır!',
        'Yeni yıla özel içeceklerimiz, seninle herkesten önce buluşmak için bugün itibarıyla mağazalarımızda!',
        'assets/images/coffee01.jpg',
      ),
      ListModel(
        'Yılbaşı içecekleriniz bugünden hazır!',
        'Yeni yıla özel içeceklerimiz, seninle herkesten önce buluşmak için bugün itibarıyla mağazalarımızda!',
        'assets/images/coffee02.jpg',
      ),
      ListModel(
        'Yılbaşı içecekleriniz bugünden hazır!',
        'Yeni yıla özel içeceklerimiz, seninle herkesten önce buluşmak için bugün itibarıyla mağazalarımızda!',
        'assets/images/coffee03.jpg',
      ),
    ];
  }
}
