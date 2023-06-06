list<string> sports = new list<string>{'Football','Basketball'};
sports.add('Tennis');
sports.add('Yoga');
sports.add('Rugby');
sports.add('Golf');
sports.add('Pilates');
sports.add('Volleyball');

list<string> listOne = new list<string>();
list<string> listTwo = new list<string>();
if(!sports.isEmpty()){
    for(string eachStr: sports){
        if(eachStr.contains('ball')){
            listOne.add(eachStr);
        }else{
            listTwo.add(eachStr);
        }
    }
}
system.debug(listOne);
system.debug(listTwo);

integer myFavorite = sports.indexOf('Yoga');
system.debug(myFavorite);
sports.remove(3);
system.debug('our list '+sports+' and list of size '+sports.size());


set<string> operationSystem = new set <string>{'Windows','macOs','Linux','Android','iOS','Chrome OS','FreeBSD','Ubuntu','Debian','Fedora'};

system.debug(operationSystem.size());

string x = ' ';
for(string eachOperation: operationSystem){
    x+='\''+eachOperation+'\''+' & ';
    

}
system.debug(x.removeEnd(' & '));
system.debug(x.length());
 