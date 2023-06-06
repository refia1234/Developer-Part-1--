List<books> bookList = new List<books>();


Books obj1 = new Books();
obj1.setKitapAdi('Safahat');
system.debug(obj1.getKitapAdi());
obj1.setYazar('Mehmet Akif Ersoy');
system.debug(obj1.getYazar());
obj1.setFiyat(25);
system.debug(obj1.getFiyat());
bookList.add(obj1);

Books obj2 = new Books();
obj2.setKitapAdi('Bu Ulke');
obj2.setYazar('Cemil Meric');
obj2.setFiyat(35);
obj2.details();
bookList.add(obj2);

books.toplamKitapSayisi();
system.debug(bookList);

//listenin her bir kitabinin bilgilerini ayri ayri yazin..
System.debug('====kitaplar ayri ayri ======');
for (books book : bookList) {
    System.debug(book);
    System.debug('Kitap adi : ' + book.getKitapAdi());
    System.debug('Yazar : ' + book.getYazar());
    System.debug('Fiyat : ' + book.getFiyat());
}

