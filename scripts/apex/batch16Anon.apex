BatchApex16 ba16 = new BatchApex16();
database.executeBatch(ba16, 11);

list<account> accList =[select id,name from account];
for(account acc: accList){
    acc.name=acc.name.remove('updated');
}
update accList;

DeleteOppBatch doo = new DeleteOppBatch();
database.executeBatch(doo, 2);


BatchClassMail bcm = new BatchClassMail();
database.executeBatch(bcm,4);



