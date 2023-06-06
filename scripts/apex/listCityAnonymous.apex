list<string> listCity = new List<string>{'Madrid','Amsterdam','Istanbul','New York','Paris','Toronto'};
integer listedekiElemanSayisi = listCity.size();
system.debug('listenin eleman sayisi: '+listedekiElemanSayisi);
string ilkEleman = listCity.get(0);
system.debug('listenin ilk elemani: '+ilkEleman);
string sonEleman= listCity.get(listedekiElemanSayisi-1);
system.debug('listenin son elemani: '+sonEleman);
boolean kontrol = listCity.contains('Istanbul');
boolean kontrol2= listCity.contains('Roma');
system.debug('listemizde Istanbul var mi?: '+kontrol);
system.debug('listemizde Roma var mi?: '+kontrol2);

list<string> newCity = new list<string>();
for (string eachStr: listCity){
 
    string yeniDeger =  eachStr+' City';
    newCity.add(yeniDeger);
    
}
 system.debug('City kelimesi eklendikten sonra yeni listemiz: '+newCity);

set<string> setCity = new set<string>();
setCity.addAll(listCity);
system.debug(setCity);
setCity.remove('Paris');
system.debug('Paris setten cikarildiktan sonra yeni set: '+setCity);
setCity.add('Istanbul');
setCity.add('Madrid');
system.debug('Setimiz: '+setCity+' ve setimizin eleman sayisi: '+setCity.size());
setCity.clear();
system.debug('setimiz temizlendi ve suan bos mu: '+setCity.isEmpty());