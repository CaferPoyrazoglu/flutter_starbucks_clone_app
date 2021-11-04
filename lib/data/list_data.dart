class ListModel {
  String baslik;
  String aciklama;
  String resim;
  List<String> butonlar;

  ListModel(this.baslik, this.aciklama, this.resim, this.butonlar);
}

class ListData {
  List<ListModel> listeGetir() {
    return <ListModel>[
      ListModel(
          'Starbucks yeni vegan lezzetleri!',
          'Mini Sebze Köfte Ciabatta, Çıtır Pane Ciabatta ve 3 Lezzetli Focaccia mutlaka deneyin!',
          'assets/images/coffee03.jpg',
          ['Banabi', 'www.Banabi.com']),
      ListModel(
          'Yılbaşı içecekleri seninle!',
          'Yılbaşı dönemine özel içeceklerimiz, yeni yılı erkenden mağazalarımıza getiriyor!',
          'assets/images/coffee01.jpg',
          ['YemekSepeti', 'www.google.com', 'Getir', 'www.getir.com']),
      ListModel(
          'Yılbaşı içecekleriniz bugünden hazır!',
          'Yeni yıla özel içeceklerimiz, seninle herkesten önce buluşmak için bugün itibarıyla mağazalarımızda!',
          'assets/images/coffee02.jpg', []),
    ];
  }
}
