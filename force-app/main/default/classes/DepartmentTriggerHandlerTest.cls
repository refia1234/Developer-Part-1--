@isTest

public class DepartmentTriggerHandlerTest {
    
    @isTest

    private static void createDefaultEmpFutureTest(){

        List<Department__c> listDep = new List<Department__c>{

            new Department__c(name__c='future'),
            new Department__c(name__c='present'),
            new Department__c(name__c='past')

        };

        test.startTest();
        insert listDep;
        test.stopTest();

        List<Object> allEmps = [select id, first_name__c from employee__c];
        assert.areEqual(3,listDep.size());
    }
    
}