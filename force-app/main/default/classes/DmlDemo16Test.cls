@isTest
public class DmlDemo16Test {
    @isTest
   private static void testDml1() {
        //call method
        DmlDemo16.dmlInsert1(); 
            //IT does not create any record in org.
                //it creates record in its own testing world.
        //validate by checking if record is created.
        list<account> acc = [select id, name from account];
        Assert.areEqual('Salesforce', acc[0].Name);
        Assert.areEqual(1, acc.size());
   }

@isTest
private static void testDml2(){
    
    DmlDemo16.dmlInsert2();

    list<department__c> listdep =[select name__c, short_code__c from department__c];
    assert.areEqual(1,listdep.size());
    assert.areEqual('Human Resource', listdep[0].name__c);
    assert.areNotEqual('IT',listdep[0].name__c);



}

@isTest
private static void testDml3(){


    account a = new account (name='test acc');
    insert a;

    DmlDemo16.dmlUpdate2();
    account acc = [select id, name from account order by CreatedDate desc limit 1];

    assert.areEqual('Salesforce Inc.',acc.name);

    a.name=acc.name;
    update a;
    assert.areEqual('Salesforce Inc.',acc.name);

  

}
@isTest
private static void testDml4(){

    department__c dep = new department__c();
    dep.name__c='Human Resource';
    dep.short_code__c='HR';
    insert dep;

    DmlDemo16.employeeDepartment();
    department__c d =[select id, name__c, createddate from department__c order by createddate desc limit 1];

    employee__c emp = [select id, first_name__c, last_name__c,department__c from employee__c where department__c=:dep.id];

    assert.areEqual('Don',emp.first_name__c);


}

}
