public class MapOrnekler {
    public static void sehirSicakliklari(){

        map<string, list<decimal>> citiesOfHot = new map<string, list<decimal>>();

        list<decimal> istanbulSicaklik = new List<decimal>{11.5,17.4,21.3,15.5,8.7,22.2,19.9};
        citiesOfHot.put('istanbul',istanbulSicaklik);

        list<decimal> kahramanmarasSicaklik = new List<decimal>{41.5,37.4,31.3,35.5,38.7,32.2,31.9};
        citiesOfHot.put('kahramanmaras',kahramanmarasSicaklik);

        list<decimal> erzurumSicaklik = new List<decimal>{1.5,7.4,11.3,13.5,8.9,22.2,9.9};
        citiesOfHot.put('erzurum',erzurumSicaklik);

        list<decimal> amsterdamSicaklik = new List<decimal>{11.5,17.4,11.3,15.5,18.7,12.2,17.9};
        citiesOfHot.put('amsterdam',amsterdamSicaklik);

        list<decimal> newyorkSicaklik = new List<decimal>{11.5,17.4,21.3,23.5,28.9,26.2,29.9};
        citiesOfHot.put('new york',newyorkSicaklik);

        map<string,decimal> mapOrtSicaklik = new map<string,decimal>();

         for(String city : citiesOfHot.keySet()){
            system.debug(city);
            system.debug(citiesOfHot.get(city));
            Decimal sum = 0;
        for(Decimal item : citiesOfHot.get(city)){
            sum += item;
    }
    Decimal average = sum / (citiesOfHot.get(city).size());
    
            mapOrtSicaklik.put(city, Average.setScale(1));

        }

        System.debug('sicaklik ortalamalari => ' + mapOrtSicaklik);

        //3. 2 tane set string olusturalim.
        set<string> less10 = new Set<String>();
        set<string> more10 = new Set<String>();

        //4. 10 derecenin ustundekileri bir sete 10 derece ve altindakileri diger sete ekleyelim..
        for (string city : mapOrtSicaklik.keySet()) {
            if (mapOrtSicaklik.get(city)>10) {
                more10.add(city);
            } else {
                less10.add(city);
            }
        }

        //5. set leri yazdiralim..
        System.debug('10 derecenin altindaki sehirler => ' + less10);
        System.debug('10 derece ve ustundeki sehirler => ' + more10);

    }

    
}


