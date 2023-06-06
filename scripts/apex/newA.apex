map<string,integer> marksObtainInMaths = new map<string,integer>{'0111CE112' =>40,'0111CE102' =>19,'0111CE100' =>33};
marksObtainInMaths.put('0111CE098', 40);
system.debug('Map---> '+marksObtainInMaths);
system.debug('---');

system.debug('Keys---> '+marksObtainInMaths.keySet());
system.debug('---');

system.debug('Values--->' +marksObtainInMaths.values());
system.debug('---');

set<string> rollNumbers= marksObtainInMaths.keySet();
system.debug('New set---> '+rollNumbers);
system.debug('---');

list<integer> marks= marksObtainInMaths.values();
system.debug('New list---> '+marks);
system.debug('---');

for(string eachStr: rollNumbers){

integer value = marksObtainInMaths.get(eachStr);

if(value<20)
    system.debug(eachStr+' is not qualified for next class');

}
