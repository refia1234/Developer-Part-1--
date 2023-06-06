@isTest

public class BatchApex16Test {
    @TestSetup
    static void makeData(){
        list<account> accList = new list<account>();
        for(integer i=1; i<=950; i++){
            account acc = new account();
            acc.name='Account '+i;
            accList.add(acc);

        }
        if(!accList.isEmpty()){
            insert accList;

        }

    }
    @isTest

    private static void batchClassTest(){
        BatchApex16 b16 = new BatchApex16();
        test.startTest();
        database.executeBatch(b16,950);
        test.stopTest();

        list<account> updateList=[select id ,name, annualRevenue from account];
        for(account acc: updateList){
            assert.isTrue(acc.name.contains('updated'));
            assert.areEqual(10000,acc.annualRevenue);
        }

        list<contact> conList= [select id from contact];
        assert.isTrue(conList.size()>0);
    }
    

}