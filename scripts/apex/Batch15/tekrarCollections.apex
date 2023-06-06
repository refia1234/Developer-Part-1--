//containsKey-containsValue-keySet-values
//listi sete cevirerek dublicate valuelerden kurtuluruz
//kucuk harfler buyuk harfin sonuna gelir sette
//list sirali set sirasiz yapilardir ve sort ve get methodu sette kullanilamaz

list<string> sehirler = new list<string>{'Istanbul','New York','Toronto','London','Amsterdam','New York'};
system.debug('sehirler=> '+sehirler);

set<string> ulkeler = new set<string>{'Turkey','USA','Canada','Turkey','Netherland','Germany'};
system.debug('ulkeler=> '+ulkeler);

set<string> sehirlerSet = new set<string>();
sehirlerSet.addAll(sehirler);
system.debug('set ile sehirler '+sehirlerSet);

map<integer,string> ogrenciMap = new map<integer,string>{11=>'John',16=>'lisa'};
ogrenciMap.put(22,'Alperen');
ogrenciMap.put(25,'Fatma');
ogrenciMap.put(33,'John');
ogrenciMap.put(16,'Marry');
system.debug(ogrenciMap);

set<integer> ogrenciNumarasi = new set<integer>();
ogrenciNumarasi= ogrenciMap.keySet();
system.debug('ogrenci numaralari=>'+ogrenciNumarasi);

list<string> isimList = new list<string>();
isimList = ogrenciMap.values();
system.debug('ogrenci isimleri=> '+isimList);

List<String> kahramanlar = new List<String>{'super', 'bat', 'he', 'iron', 'spider', 'ant'};
List<String> List1 = new List<String>();
List1 = ListSetMapCollections.heros(kahramanlar);
System.debug('Yeni liste => '+ List1);

List<integer> sayilar = new List<integer>{22, 16, 44, 5, 36, 99};
integer minSayi = ListSetMapCollections.minNumber(sayilar);
System.debug('en kucuk sayi = ' + minSayi);

List<integer> sayilar2 = new List<integer>{22, 16, 44, 5, 36, 99};
integer minSayi2 = ListSetMapCollections.minNumber2(sayilar2);
System.debug('en kucuk sayi(sort) = ' + minSayi2);

List<Integer> numbers = new List<integer>{22, 45, 11, 7, 8, 4, 35, 72, 33, 44, 67};
ListSetMapCollections.tekCiftSayilar(numbers);