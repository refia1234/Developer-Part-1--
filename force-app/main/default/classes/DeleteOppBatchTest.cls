@isTest
public class DeleteOppBatchTest {

    @TestSetup
    static void makeData(){

        List<opportunity> listOpp = new List<opportunity>();

        for(integer i=0; i<200; i++){
            opportunity opp = new opportunity();
            opp.name='Test Name'+ i;
            opp.stageName='Closed Lost';
            opp.closeDate=date.today().addDays(30);
            listOpp.add(opp);
        }
        insert listOpp;

        
    }

    @isTest
    private static void oppBatchTest(){
        test.startTest();
        DeleteOppBatch dob = new DeleteOppBatch();
        database.executeBatch(dob,200);
        test.stopTest();

        list<opportunity> allOpp = [select id from opportunity];
        assert.areEqual(200,allOpp.size());

    }
    
}