
// capitalize
// remove
// set<string> countries = new set<string>{'USA','UK','Canada','France','Germany','Spain'};
// system.debug(countries.size());
// system.debug(countries);

// system.debug(countries.remove('USA'));
// system.debug(countries);

// set<list<integer>> new1 = new set<list<integer>>();
// list<integer> num = new list<integer>{1,5,6,7,10}; //
// new1.add(num);
// system.debug(new1);

// system.debug(ListExtraAssignment.schoolsList('English'));
// system.debug(ListExtraAssignment.schoolsList('Turkish'));
// system.debug(ListExtraAssignment.schoolsList('Japanese'));

map<integer,string> map3 = new map <integer,string>{
1011=>'Amar',
1022=>'Monica',
1033=>'Lui',
1055=>'Monica'

};
integer rollNo = 1011;
string studentName = map3.get(rollNo);
system.debug(map3);
system.debug(studentName);




Map<String, Decimal> map1 = new Map<String, Decimal>{'Ürün 1'=> 15,'Ürün 2'=> 12.5};
map1.put('Ürün 3', 8.75);
map1.put('Ürün 4', 10.25);
map1.put('Ürün 5', 9.99);

Map<String, Decimal> map2 = new Map<String, Decimal>();



for(String key : map1.keySet()) {
    Decimal price = map1.get(key);
    if(price > 10) {
        map2.put(key, price);
    } else {
        map1.put(key, price);
    }
}
system.debug(map2);

map<string, list<string>> m9 = new map<string, list<string>>();

list<string> itTeam = new list<string>{'Brian','Decker'};
list<string> salesTeam = new list<string>{'John','Jane'};
list<string> serviceTeam = new list<string>{'Monica','Alex'};
 m9.put('IT',itTeam);
 m9.put('Sales',salesTeam);
 m9.put('Service',serviceTeam);

 system.debug(m9);
 list<list<string>> newOne =m9.values();
 system.debug(newOne);
 system.debug(newOne.size());
 system.debug(m9.size());
 system.debug(newOne[2]);

 set<string> teamSet = m9.keySet();
 for(string eachTeam : teamSet){
    list<string> workers = m9.get(eachTeam);
    system.debug('Teams are:'+ eachTeam+' workers: '+workers);

 }