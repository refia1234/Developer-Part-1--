string id1= '0013x00002RfRdAAAV';
id id2='0013x00002RfRdAAAV';

string str =id2; //storing Id to String, and it works.
system.debug(id2);

Id id3= id1;
system.debug(id3);

//https://apple215-dev-ed.develop.lightning.force.com/lightning/r/Account/0013x00002RZYrGAAX/view

string sample = 'humans are a species';
boolean test = sample.contains('hu');
system.debug(test);
system.debug(sample.length());
// system.debug(sample.contains('hu'));

boolean check = sample.equals(66); // equals methos is accepting all the datatype !!
system.debug(check);


date newDate = date.newInstance(1234,4,8);
system.debug(newDate);

datetime dt1= datetime.newInstance(1453,5,29,7,45,30);
system.debug(dt1);

// integer i;
// integer j=7;
// integer z=i+j; // if integer is null, we cannot do any operation on it.

integer a = 8/3;
system.debug(a);
