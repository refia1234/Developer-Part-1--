List<string> coloursList = new List<string>();
coloursList.add('White');
coloursList.add('Red');
coloursList.add('Purple');
coloursList.add('Pink');
coloursList.add('Black');

boolean check = coloursList.contains('Red');
system.debug(coloursList);
system.debug(check);
system.debug(coloursList.get(4).toUpperCase());
system.debug(coloursList[4].toLowerCase());
system.debug(coloursList.get(4).Capitalize());
integer size = coloursList.size();
system.debug(size);

List<string> colourCodesList = new List<string>();
system.debug(!colourCodesList.isEmpty());
boolean bos= colourCodesList.isEmpty();
if(bos){
    system.debug('Basardik');
}
colourCodesList.add('#FF0000');
colourCodesList.add('#AF0000');
colourCodesList.add('#BF0000');
colourCodesList.add('#CF0000');
colourCodesList.add('#DF0000');
system.debug(colourCodesList);
system.debug(coloursList.equals(colourCodesList));
coloursList.addAll(colourCodesList);
system.debug(coloursList);

set<integer> volkan;
list<string> refia;
system.debug(volkan);
system.debug(refia);



