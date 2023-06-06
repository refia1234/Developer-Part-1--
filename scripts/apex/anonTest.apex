// DecimalMethodsDemo TesT= new DecimalMethodsDemo();
// TesT.practise1();
// TesT.practise2();

PrimitiveDataTypeDemo2 practise = new PrimitiveDataTypeDemo2();
// practise.printNewDate();
practise.printNewTime();

CalculatorProgram cp = new CalculatorProgram();
cp.calc();

String str = 'Salesforce Apex substring example';
String substr1 = str.substring(10); // " Apex substring example"
String substr2 = str.substring(0, 10); // "Salesforce"
system.debug(substr1);
system.debug(substr2);
// substring methodu index numarasindan baslar ve ikinci parametreye kadar devam eder, ikinci parametreyi almaz
// toPlainString yöntemi, bir Decimal tipindeki sayının ondalık kısmını dahil eden bir string temsilini döndürür. Örneğin, 3.14 sayısı için toPlainString yöntemi 3.14 string'ini döndürür.
// Ancak bazen, toPlainString yöntemi ondalik kısmın sonuna kadar sıfırlar ekleyebilir. Bu nedenle, bir trim yöntemi uygulayarak, sayının başındaki ve sonundaki boşlukları kaldırmak isteyebilirsiniz.
// Örneğin, yukarıdaki örnekte num değişkeni 3.140000 değerini içeriyorsa, toPlainString yöntemi 3.140000 string'ini döndürecektir. Ancak trim yöntemi uygulayarak bu string'in başındaki ve sonundaki boşlukları kaldırabilirsiniz ve sonuç olarak 3.14 string'ini elde edebilirsiniz.

List<String> meyveler = new List<String>{'elma', 'armut', 'muz'};
system.debug(meyveler);
// meyveler.clear();
// system.debug(meyveler);
meyveler.remove(1);
system.debug(meyveler);

List<String> meyveler1 = new List<String>{'elma', 'armut', 'muz'};
String sonMeyve = meyveler1.get(meyveler.size()-1);
//bu ornek listenin son elemanini alir
List<String> meyveler0 = new List<String>{'elma', 'armut'};
List<String> sebzeler = new List<String>{'patates', 'havuç'};
List<String> gida = new List<String>();
gida.addAll(meyveler0);
gida.addAll(sebzeler);
system.debug(gida);
//bu method gida listesine hem meyveleri hem de sebzeleri ekleyecektir.

List<String> meyveler2 = new List<String>{'elma', 'armut', 'muz'};
for(String meyve : meyveler2){
  System.debug(meyve);
}
system.debug('_______________________________________________________________________');

boolean aliVarMi= yaslar2.containsKey('Ali');
system.debug(aliVarMi);

// Set'teki Elemanları Listeye Dönüştürme
Set<String> sehirler = new Set<String>{'İstanbul', 'Ankara', 'İzmir'};
List<String> sehirListesi = new List<String>(sehirler);

//listeden belirli bir indeksteki elemani asagidaki sekilde silebiliriz
List<String> isimler = new List<String>{'Ahmet', 'Mehmet', 'Ayşe'};
isimler.remove(0); //-------> index numarasi parametreye girilmek zorunda, string girince hata veriyor
system.debug(isimler);

isimler.clear(); 
//bu method listenin tum elemanlarini siler
system.debug(isimler);

List<String> isimler1 = new List<String>{'Ahmet', 'Mehmet', 'Ayşe'};
String birlesikIsimler = String.join(isimler1, ',');
system.debug(birlesikIsimler);
//listenin elemanlarini bu sekilde birlestirebiliriz, normalde (Ahmet, Mehmet,Ayse) sonradan parantez kalkiyor

// List'in Elemanlarını Birleştirme ------> sette ayni yontem hata veriyor
List<String> sehirler1 = new List<String>{'İstanbul', 'Ankara', 'İzmir'};
String birlesikSehirler = String.join(sehirler1, '-' );
system.debug(birlesikSehirler);


// String str1 = 'Refia';
// integer firstNam =str1.charAt(1);

// System.debug(firstNam);
// String str = 'Ω is Omega.';
// System.debug(str.charAt(1));

// string refia = 'volkan';
// string x = refia.center(12);
// system.debug(x);
// string y= refia.center(12,'-');
// system.debug(y);

system.debug('_____________________________________________________________________________________________________________-');

Map<String, Integer> yaslar3 = new Map<String, Integer>{
  'Ali' => 25,
  'Ayşe' => 30,
  'Mehmet' => 35
};
List<Integer> yasListesi = yaslar3.values();
//map in key e karsilik gelen value yani degerlerini bu sekilde aliriz
system.debug(yasListesi);

// Map'teki Eleman Sayısını Alma
Integer elemanSayisi = yaslar2.size();
system.debug(elemanSayisi);

Map<String, Integer> yaslar1 = new Map<String, Integer>();
yaslar1.put('Ali', 25);
yaslar1.put('Ayşe', 30);
yaslar1.put('Mehmet', 35);

Map<String, Integer> yaslar0 = new Map<String, Integer>{
  'Ali' => 25,
  'Ayşe' => 30,
  'Mehmet' => 35
};

// Map'in Elemanlarını Döngü İle Gezme
Map<String, Integer> yaslar2 = new Map<String, Integer>{
  'Ali' => 25,
  'Ayşe' => 30,
  'Mehmet' => 35
};
for(String ad : yaslar2.keySet()){
  System.debug(ad + ' : ' + yaslar2.get(ad)); //----------->Ali:25 , Ayse: 30, Mehmet:35 or yaslar2.values()
}
// mapten eleman silerken key kaldirilir
yaslar2.remove('Ayşe');
system.debug(yaslar2);


MapDemo.mapStringInteger();

map<string,string> mapCC = NEW map<string,string>();
mapCC.put('USA','Dollar');
mapCC.put('FRANCE','Euro');
mapCC.put('PORTUGAL','Euro');
mapCC.put('India','Rupees');
mapCC.put('India','Rupee');
mapCC.put('Turkey','Lira');
mapCC.put('turkey','Lira');
system.debug(mapCC);

system.debug( mapCC.get('irlanda'));

set<string> allCountry = mapCC.keySet();
system.debug('all countries ' + allCountry);

list<string> allCurrency =mapCC.values();
system.debug('all currencies '+allCurrency);
system.debug('_________________________________________________');

set<string> allCountries = mapCC.keySet();

for( string eachCntry: allCountries){

  string keys = 'Country is '+eachCntry;
  keys+=', its currency is '+mapCC.get(eachCntry);
  system.debug(keys);
  system.debug('--');

}

  system.debug(MapDemo.monthName(8));
  system.debug(MapDemo.monthName(13));
  system.debug(MapDemo.monthName(12));
  system.debug(MapDemo.monthName(1));
  system.debug(MapDemo.monthName(9));
  system.debug(MapDemo.monthName(0));

  MapDemo2.mapExample2();

