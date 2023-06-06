public class SetDemo {
   public static void citySet(){
    set<string> cities = new set<string>();
    cities.add('Tokyo');
    cities.add('Berlin');
    cities.add('Lisbon');
    cities.add('Tokyo');
    cities.add('TOKYO');
    cities.add('Nairobi');
    cities.add('Nairobi');
    cities.add('Nairobi');
    system.debug('set of cities :' +cities);
   }

   public static void randomIntegerSet(){
    set<integer> intSet = new set<integer>{15,25,10,15,15};
   system.debug(intSet);
   }

   public static void setFromList(){
    list<integer> li = new list<integer>{10,15,15,21,21,55,101,101};
    system.debug('list integer: '+li);

    set<integer> si= new set<integer>();
    si.addAll(li);
    system.debug('si integer:' +si);

    list<integer> newLi = new list<integer>();
    newLi.addAll(si);
    system.debug('dedublicated list: '+newLi);

   }

   public static set<string> upperCaseSet(set<string> setString){
    set<string> capsSet = new set<string>();

    for(string eachStr : setString){

        string temp = eachStr.toUpperCase();
        capsSet.add(temp);

    }

    return capsSet;

   }
}