@isTest
public class AccountQueueableExampleTest {
    @isTest
    private static void testQueueable1() {

        List<Account> accounts = new List<Account>();
        for (Integer i = 0; i <= 500; i++) {
            Account acc = new Account(Name = 'Test Account ' + i);
            accounts.add(acc);
        }
        insert accounts;

        // Queueable sınıfını çalıştır
        Test.startTest();
        AccountQueueableExample queueable = new AccountQueueableExample();
        queueable.listAcc=accounts;
        system.enqueueJob(queueable);
        Test.stopTest();

        // Queueable işlemi tamamlandıktan sonra verileri doğrula
        List<Account> lisstAcc = [SELECT id,name FROM Account WHERE name like '% --SI%'];
        assert.areEqual(500, lisstAcc.size());
        
        
    }
   
}
