@isTest

public class SoqlDemo3Test {
    @TestSetup
    static void makeData(){

// list<integer> listInt = new list<integer>{1,5,9,50};
// Account acc = new account(name='Monday.com');

        List<account> listAcc = new List<account>{
            new account (name = 'May', phone='7775556666'),
            new account (name = 'June'),
            new account (name = 'Sunday',industry='Energy')

        };
        insert listAcc;

        List<contact> listContacts = new List<contact>();
        for(integer i=0; i<300; i++){
            contact c = new contact (lastname=' test con '+i);
            if(i<100){
                c.accountId=listAcc[0].id;

            }else if(i<200){
                c.accountId=listAcc[1].id;

            }else{
                c.accountId=listAcc[2].id;

            }
            listContacts.add(c);

        }
        insert listContacts;
    }

    @isTest

    public static void testSOQL1(){
        SoqlDemo3.childToParentQuery();

    }

    @isTest
    static void testSOQL2(){
        List<account> allAcc = [select id,name,industry from account];
        List<opportunity> listOpp = new List<opportunity>();
        opportunity opp = new opportunity (name='Test opp',closedate=date.today(),stageName='New',amount=5000);
        listOpp.add(opp);
        opportunity opp2 = new opportunity (name='Test opp 2',closedate=date.today(),stageName='New',amount=10000);
        listOpp.add(opp2);

        insert listOpp;
        SoqlDemo3.childToParentSOQL1();

    }

}