@isTest

public class TriggerHandlerTest {

    @isTest
    private static void testLeadTrigger(){

        customMain__c cs = new customMain__c ();
        cs.subject__c = '';
        cs.status__c = '';
        cs.comments__c = '';
        cs.caseTask__c = true;
        cs.leadTask__c = true;

        insert cs;

        lead ld = new lead();
        ld.firstName = 'John';
        ld.lastName ='Veli';
        ld.company ='Apple';
        ld.status ='Open';
    
        insert ld;

        case cs1 = new case ();
        cs1.Subject='Deneme';
        cs1.Status='New';
        cs1.Origin='Phone';

        insert cs1;

        test.startTest();
        List<task> listTask = [select id from task where whoId =: ld.id];

        assert.areEqual(0, listTask.size());
        test.stopTest();

        test.startTest();
        List<task> listTask1 = [select id from task where whatId =: cs1.id];

        assert.areEqual(0, listTask1.size());
        test.stopTest();





    }


    }

    



    
    