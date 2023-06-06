// StringMethodsDemo length= new StringMethodsDemo();
// length.stringMethod1();

// string s1 = 'salesforce';
// boolean contains = s1.contains('sales');
// system.debug(contains);

// string s2= s1.toUpperCase();
// system.debug(s2);
// string s3= 'CAMELCASE';
// string s4= s3.toLowerCase();
// system.debug(s4);

// string temp ='apex';
// boolean checkApex= s1.contains(temp);
// system.debug(checkApex);

// string username='    Refia A  '; 
// system.debug(username.length());
// username=username.trim();
// system.debug('after trim '+username);
// system.debug(username.length());

// string username2='Refia';
// boolean checkNames=username.equals(username2);
// system.debug(checkNames);

// string username3='REFIA';
// boolean checkNames2=username.equals(username3);
// system.debug(checkNames2);

// string username4='Refia A';
// boolean checkNames3=username.equals(username4);
// system.debug(checkNames3);

// boolean checkNames4=username.equalsIgnoreCase('REFIA A');
// system.debug(checkNames4);
string str='Softinnovas Salesforce';
integer index= str.indexOf('v');
system.debug(index);

string st= 'My name is Refia. Refia AKSOY.';
integer indx=st.indexOf('Ref');
system.debug(indx);

integer abc= st.indexOf('z');
system.debug(abc);

String s1= 'Welcome to Softinnovas bootcamp. Ready to learn?';
string s2= s1.remove('to');
system.debug(s2);

string a= 'Salesforce and force.com';
string b=a.removeEnd('.com');
system.debug(b);
string c= a.removeEndIgnoreCase('.COM');
system.debug(c);

boolean x= true;
string y= string.valueOf(x);
system.debug(y);

integer i=55;
integer j=84;
string tr= string.valueOf(i);
string jst=string.valueOf(j);
system.debug(tr+jst);