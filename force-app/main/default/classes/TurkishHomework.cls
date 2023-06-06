public class TurkishHomework {
   public static void practise(){
    list<account> accList = [select id, name, AnnualRevenue from account where name like 'united%'];
    for(account acc: accList){
    system.debug(acc.id);
    system.debug(acc.name);
    system.debug(acc.AnnualRevenue);

    }
    list<account> list1= [select id,name,AnnualRevenue from account where AnnualRevenue!=null order by AnnualRevenue limit 3];
    for(account acc1: list1){
        system.debug(acc1.id);
        system.debug(acc1.name);
        system.debug(acc1.AnnualRevenue);
    }

    account list2=[select name,rating,phone from account order by createddate desc limit 1];
    system.debug(list2);

    list<contact> list3=[select id,name, account.name,email,title from contact where title like '%VP%'];
    for(contact con: list3){
        system.debug(con.name);
        system.debug(con.title);
        system.debug(con.email);
        system.debug(con.account.name);
    }
   }
   
}