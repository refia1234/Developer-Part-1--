@isTest
public  class SoqlAndDmlTest {
@isTest
private static void getAccWithOppTest(){

    list<account> accList = new list<account>();
    account acc1= new account();
    acc1.name='Demo 1';
    accList.add(acc1);

    account acc2= new account();
    acc2.name='Demo 2';
    accList.add(acc2);

    account acc3= new account();
    acc3.name='Demo 3';
    accList.add(acc3);

    insert accList;

    list<opportunity> oppList = new list<opportunity>();

    for(account acc: accList){
        opportunity opp =new opportunity();
        opp.name=acc.name+' Opportunity ';
        opp.stageName='prospecting';
        opp.closeDate=date.today().addDays(30);
        opp.accountId=acc.id;
        oppList.add(opp);

    }
    insert oppList;

    integer sz = SoqlAndDml.getAccWithOpp();
    assert.areEqual(3,sz);

}

@isTest
private static void createAccountTest(){
    SoqlAndDml.createAccount('Soft Innovas');
    account acc =[select id,name from account limit 1];
    assert.areEqual('Soft Innovas',acc.name);

    List<contact> conList = [select id from contact];
    assert.areEqual(5,conList.size());


}
}