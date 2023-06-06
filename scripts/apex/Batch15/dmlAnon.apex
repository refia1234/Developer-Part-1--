account acc = new account();
acc.name='Refia AKSOY';
acc.phone='5514552341';
insert acc;

acc.name='Volkan AKSOY';
update acc;

contact con = new contact();
con.lastname='Hirlak';
con.leadsource='Web';
con.accountId = acc.id;
insert con;

account acc2 = [select id from account where name='apple' limit 1];
contact con2 = new contact();
con2.lastname='OZCAN';
con2.accountId=acc2.id;
insert con2;

salesforce_project__c sfp = new salesforce_project__c();
sfp.project_name__c = 'Dream Vista';
sfp.status__c='New';
insert sfp;


salesforce_ticket__c st = new salesforce_ticket__c();
st.salesforce_project__c=sfp.id;
st.subject__c='Salesforce Ticket Dml';
insert st;

account acc3 =[select id, name from account where name='apple' limit 1];
acc3.name='test2';
update acc3;

list<account> acc1 = [select id, name, annualrevenue from account order by annualrevenue desc limit 5];

