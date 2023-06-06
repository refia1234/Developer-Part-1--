@isTest
public class AccountsBatchTest{
    @isTest
public static void testBatch1(){
    List<account> listAcc = new List<account>();
    for(integer i=0; i<955; i++){
        account acc = new account();
        acc.name = 'Test Acc '+ i;

        listAcc.add(acc);

    }

    insert listAcc;

    Test.startTest();

    AccountsBatch ab = new AccountsBatch();
    database.executeBatch(ab,955);

    Test.stopTest();

    //assert
    List<account> allAccounts = [select id, description from account];
    for (account ac : allAccounts){
        assert.isTrue(ac.description.containsIgnoreCase('batch'));
    }


}
}