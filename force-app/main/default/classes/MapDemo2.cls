public class MapDemo2 {
    public static void mapExample2(){

    map<string,decimal> map2= new map<string,decimal>{'apple'=>5.5,'pen'=>10.5,'shirt'=>50.5,'laptop'=>1500.00};
    system.debug('map of map2 is '+map2);


    map<string,decimal>  higherMap = new map<string,decimal> ();
    map<string,decimal>  lowerMap = new map<string,decimal> ();
    set<string> allItems = map2.keySet();

    for(string eachItem: allItems){

       decimal eachPrice = map2.get(eachItem);

        if(eachPrice>100){

            higherMap.put(eachItem,eachPrice);
            system.debug('Higher: '+eachItem+'----->'+eachPrice);
        }else{

            lowerMap.put(eachItem,eachPrice);
            system.debug('Lower: '+eachItem+'----->'+eachPrice);
        }

    }



    }
}