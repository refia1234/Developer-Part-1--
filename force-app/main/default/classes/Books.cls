public class Books {

    string kitapAdi;
    string yazar;
    decimal fiyat;
    //static olmasi sayesinde her instance olustugunda sifirlanmayack ve class a ait oldugu icin degerleri tutacak.
    static integer kitapSayisi=0;

    public Books() {
        kitapSayisi++;
        system.debug('kutuphanemize yeni bir kitap eklendi ve kitap sayimiz '+kitapSayisi+' oldu.' );
    }

    public void setKitapAdi(string kitapAdi){
        this.kitapAdi=kitapAdi;
    }
    public string getKitapAdi(){
        return kitapAdi;
    }
    public void setYazar(string yazar){
        this.yazar=yazar;
    }
    public string getYazar(){
        return this.yazar;
    }
    public void setFiyat(decimal fiyat){
        this.fiyat=fiyat;
    }
    public decimal getFiyat(){
        return this.fiyat;
    }

    public void details(){
        system.debug('Kitap adi: '+this.kitapAdi+', yazari: '+this.yazar+', fiyati: '+this.fiyat);
        //statik variable icin this ifadesi kullanilamiyor
        system.debug('toplam kitap sayisi '+kitapSayisi);
    }
    public static void toplamKitapSayisi(){
        system.debug('toplam kitap sayisi: '+kitapSayisi);
        
        // Books obj3= new books();
        // obj3.details();
    }

}

